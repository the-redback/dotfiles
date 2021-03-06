# ============================== powerlevele9k
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=1
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='grey'
POWERLEVEL9K_MODE="nerdfont-complete"
#POWERLEVEL9K_MODE="awesome-fontconfig"
POWERLEVEL9K_STATUS_HIDE_SIGNAME=true

# fish like directory path, ie, ~/g/s/g/k/postgres
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

# POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%118F❯ "
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""

# POWERLEVEL9K_LEFT_LEFT_WHITESPACE=''
# POWERLEVEL9K_LEFT_RIGHT_WHITESPACE=''
# POWERLEVEL9K_RIGHT_LEFT_WHITESPACE=''
# POWERLEVEL9K_RIGHT_RIGHT_WHITESPACE=''

#POWERLEVEL9K_VISUAL_IDENTIFIER_EXPANSION='${P9K_VISUAL_IDENTIFIER// }'
#POWERLEVEL9K_VISUAL_IDENTIFIER_EXPANSION='${P9K_VISUAL_IDENTIFIER}'

# To remove trailing space from all default icons, set POWERLEVEL9K_VISUAL_IDENTIFIER_EXPANSION
POWERLEVEL9K_VISUAL_IDENTIFIER_EXPANSION='${P9K_VISUAL_IDENTIFIER% }'
  # To enable default icons for one segment (e.g., dir), set
  # POWERLEVEL9K_DIR_VISUAL_IDENTIFIER_EXPANSION='${P9K_VISUAL_IDENTIFIER}'.
  #
  # To assign a specific icon to one segment (e.g., dir), set
  # POWERLEVEL9K_DIR_VISUAL_IDENTIFIER_EXPANSION='⭐'.
  #
  # To assign a specific icon to a segment in a given state (e.g., dir in state NOT_WRITABLE),
  # set POWERLEVEL9K_DIR_NOT_WRITABLE_VISUAL_IDENTIFIER_EXPANSION='⭐'.
  #
  # Note: You can use $'\u2B50' instead of '⭐'. It's especially convenient when specifying
  # icons that your text editor cannot render. Don't forget to put $ and use single quotes when
  # defining icons via Unicode codepoints.

POWERLEVEL9K_VCS_GIT_HOOKS=(vcs-detect-changes)
POWERLEVEL9K_VCS_SHORTEN_LENGTH=10
POWERLEVEL9K_VCS_SHORTEN_MIN_LENGTH=5
POWERLEVEL9K_VCS_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_VCS_SHORTEN_DELIMITER=".."
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='palegreen1'
POWERLEVEL9K_HIDE_BRANCH_ICON=true
POWERLEVEL9K_VCS_GIT_ICON=$'\uF113'
#POWERLEVEL9K_COLOR_SCHEME='light'

# remove trailing space after right prompt
ZLE_RPROMPT_INDENT=0

# mainly to remove spaces between vcs icons
POWERLEVEL9K_VCS_UNTRACKED_ICON='\uF059'
POWERLEVEL9K_VCS_UNSTAGED_ICON='\uF06A'
POWERLEVEL9K_VCS_STAGED_ICON='\uF055'
POWERLEVEL9K_VCS_STASH_ICON='\uF01C'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\uF01A'
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\uF01B'
POWERLEVEL9K_VCS_TAG_ICON='\uF02B'
POWERLEVEL9K_VCS_COMMIT_ICON='\uE729'
POWERLEVEL9K_VCS_BRANCH_ICON='\uF126'
POWERLEVEL9K_VCS_REMOTE_BRANCH_ICON='\uE728'

#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status)
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs command_execution_time vcs)
end =======================================
