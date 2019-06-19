# ref: https://github.com/maruf/dotfiles/blob/master/Dockerfile
FROM ubuntu:latest

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get upgrade -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
        build-essential \
        git \
        python \
        python-pip \
        software-properties-common \
        sudo \
        curl \
        man \
        locales-all \
        net-tools \
        dnsutils \
        iproute2 \
        iputils-ping && \
    rm -Rf /var/lib/apt/lists/* && \
    apt-get clean && \
    apt-get autoremove -y

# Add maruf as user
RUN useradd --user-group \
            --create-home \
            --shell /bin/bash \
            maruf && \
    echo 'maruf ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
# Switch to damon user and /home/damon directory
USER maruf
ENV HOME /home/maruf
WORKDIR /home/maruf

# RUN mkdir src && cd src && \
#     git clone git://github.com/maruf/dotfiles.git && \
#     cd dotfiles && \
#     ./install
# RUN git config --global --unset 'url.git@github.com:.insteadof' && \
#     cd src/dotfiles && \
#     git submodule init && \
#     git submodule update

# Download and install Go.  GOROOT and GOPATH will be set in dot files
ENV GO_VERSION=1.7.3
RUN curl -LO https://storage.googleapis.com/golang/go${GO_VERSION}.linux-amd64.tar.gz && \
    tar xzf go${GO_VERSION}.linux-amd64.tar.gz && \
    mv go goroot && \
    rm go${GO_VERSION}.linux-amd64.tar.gz && \
    mkdir -p src/go/bin

COPY . /home/maruf/src/dotfiles

RUN mkdir .ssh && \
    sudo chown -R maruf.maruf /home/maruf && \
    cd src/dotfiles && \
    ./install

ENTRYPOINT ["/bin/bash"]
CMD ["--login"]
