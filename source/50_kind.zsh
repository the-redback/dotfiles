#compdef _kind kind


function _kind {
  local -a commands

  _arguments -C \
    '--loglevel[logrus log level [panic, fatal, error, warning, info, debug, trace]]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "build:Build one of [base-image, node-image]"
      "completion:Output shell completion code for the specified shell (bash or zsh)"
      "create:Creates one of [cluster]"
      "delete:Deletes one of [cluster]"
      "export:exports one of [logs]"
      "get:Gets one of [clusters, nodes, kubeconfig, kubeconfig-path]"
      "help:Help about any command"
      "load:Loads images into nodes"
      "version:prints the kind CLI version"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  build)
    _kind_build
    ;;
  completion)
    _kind_completion
    ;;
  create)
    _kind_create
    ;;
  delete)
    _kind_delete
    ;;
  export)
    _kind_export
    ;;
  get)
    _kind_get
    ;;
  help)
    _kind_help
    ;;
  load)
    _kind_load
    ;;
  version)
    _kind_version
    ;;
  esac
}


function _kind_build {
  local -a commands

  _arguments -C \
    '--loglevel[logrus log level [panic, fatal, error, warning, info, debug, trace]]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "base-image:build the base node image"
      "node-image:build the node image"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  base-image)
    _kind_build_base-image
    ;;
  node-image)
    _kind_build_node-image
    ;;
  esac
}

function _kind_build_base-image {
  _arguments \
    '--image[name:tag of the resulting image to be built]:' \
    '--source[path to the base image sources, autodetected by default]:' \
    '--loglevel[logrus log level [panic, fatal, error, warning, info, debug, trace]]:'
}

function _kind_build_node-image {
  _arguments \
    '--base-image[name:tag of the base image to use for the build]:' \
    '--image[name:tag of the resulting image to be built]:' \
    '--kube-root[Path to the Kubernetes source directory (if empty, the path is autodetected)]:' \
    '--type[build type, one of [bazel, docker]]:' \
    '--loglevel[logrus log level [panic, fatal, error, warning, info, debug, trace]]:'
}


function _kind_completion {
  local -a commands

  _arguments -C \
    '--loglevel[logrus log level [panic, fatal, error, warning, info, debug, trace]]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "bash:Output shell completions for bash"
      "zsh:Output shell completions for zsh"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  bash)
    _kind_completion_bash
    ;;
  zsh)
    _kind_completion_zsh
    ;;
  esac
}

function _kind_completion_bash {
  _arguments \
    '--loglevel[logrus log level [panic, fatal, error, warning, info, debug, trace]]:'
}

function _kind_completion_zsh {
  _arguments \
    '(-h --help)'{-h,--help}'[help for zsh]' \
    '--loglevel[logrus log level [panic, fatal, error, warning, info, debug, trace]]:'
}


function _kind_create {
  local -a commands

  _arguments -C \
    '--loglevel[logrus log level [panic, fatal, error, warning, info, debug, trace]]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "cluster:Creates a local Kubernetes cluster"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  cluster)
    _kind_create_cluster
    ;;
  esac
}

function _kind_create_cluster {
  _arguments \
    '--config[path to a kind config file]:' \
    '--image[node docker image to use for booting the cluster]:' \
    '--name[cluster context name]:' \
    '--retain[retain nodes for debugging when cluster creation fails]' \
    '--wait[Wait for control plane node to be ready (default 0s)]:' \
    '--loglevel[logrus log level [panic, fatal, error, warning, info, debug, trace]]:'
}


function _kind_delete {
  local -a commands

  _arguments -C \
    '--loglevel[logrus log level [panic, fatal, error, warning, info, debug, trace]]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "cluster:Deletes a cluster"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  cluster)
    _kind_delete_cluster
    ;;
  esac
}

function _kind_delete_cluster {
  _arguments \
    '--name[the cluster name]:' \
    '--loglevel[logrus log level [panic, fatal, error, warning, info, debug, trace]]:'
}


function _kind_export {
  local -a commands

  _arguments -C \
    '--loglevel[logrus log level [panic, fatal, error, warning, info, debug, trace]]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "logs:exports logs to to a tempdir or [output-dir] if specified"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  logs)
    _kind_export_logs
    ;;
  esac
}

function _kind_export_logs {
  _arguments \
    '--name[the cluster context name]:' \
    '--loglevel[logrus log level [panic, fatal, error, warning, info, debug, trace]]:'
}


function _kind_get {
  local -a commands

  _arguments -C \
    '--loglevel[logrus log level [panic, fatal, error, warning, info, debug, trace]]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "clusters:lists existing kind clusters by their name"
      "kubeconfig:prints cluster kubeconfig"
      "kubeconfig-path:prints the default kubeconfig path for the kind cluster by --name"
      "nodes:lists existing kind nodes by their name"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  clusters)
    _kind_get_clusters
    ;;
  kubeconfig)
    _kind_get_kubeconfig
    ;;
  kubeconfig-path)
    _kind_get_kubeconfig-path
    ;;
  nodes)
    _kind_get_nodes
    ;;
  esac
}

function _kind_get_clusters {
  _arguments \
    '--loglevel[logrus log level [panic, fatal, error, warning, info, debug, trace]]:'
}

function _kind_get_kubeconfig {
  _arguments \
    '--internal[use internal address instead of external]' \
    '--name[the cluster context name]:' \
    '--loglevel[logrus log level [panic, fatal, error, warning, info, debug, trace]]:'
}

function _kind_get_kubeconfig-path {
  _arguments \
    '--name[the cluster context name]:' \
    '--loglevel[logrus log level [panic, fatal, error, warning, info, debug, trace]]:'
}

function _kind_get_nodes {
  _arguments \
    '--name[the cluster context name]:' \
    '--loglevel[logrus log level [panic, fatal, error, warning, info, debug, trace]]:'
}

function _kind_help {
  _arguments \
    '--loglevel[logrus log level [panic, fatal, error, warning, info, debug, trace]]:'
}


function _kind_load {
  local -a commands

  _arguments -C \
    '--loglevel[logrus log level [panic, fatal, error, warning, info, debug, trace]]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "docker-image:loads docker image from host into nodes"
      "image-archive:loads docker image from archive into nodes"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  docker-image)
    _kind_load_docker-image
    ;;
  image-archive)
    _kind_load_image-archive
    ;;
  esac
}

function _kind_load_docker-image {
  _arguments \
    '--name[the cluster context name]:' \
    '*--nodes[comma separated list of nodes to load images into]:' \
    '--loglevel[logrus log level [panic, fatal, error, warning, info, debug, trace]]:'
}

function _kind_load_image-archive {
  _arguments \
    '--name[the cluster context name]:' \
    '*--nodes[comma separated list of nodes to load images into]:' \
    '--loglevel[logrus log level [panic, fatal, error, warning, info, debug, trace]]:'
}

function _kind_version {
  _arguments \
    '--loglevel[logrus log level [panic, fatal, error, warning, info, debug, trace]]:'
}
