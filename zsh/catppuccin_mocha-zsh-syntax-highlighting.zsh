# Catppuccin Mocha Theme (for zsh-syntax-highlighting)
#
# Paste this files contents inside your ~/.zshrc before you activate zsh-syntax-highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main cursor)
typeset -gA ZSH_HIGHLIGHT_STYLES

# Main highlighter styling: https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters/main.md
#
## General
### Diffs
### Markup
## Classes
## Comments
ZSH_HIGHLIGHT_STYLES[comment]='fg=#585b70'
## Constants
## Entities
## Functions/methods
ZSH_HIGHLIGHT_STYLES[alias]='fg=#a6e3a1'
ZSH_HIGHLIGHT_STYLES[suffix_alias]='fg=#a6e3a1'
ZSH_HIGHLIGHT_STYLES[global_alias]='fg=#a6e3a1'
ZSH_HIGHLIGHT_STYLES[function]='fg=#a6e3a1'
ZSH_HIGHLIGHT_STYLES[command]='fg=#a6e3a1'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=#a6e3a1,italic'
ZSH_HIGHLIGHT_STYLES[autodirectory]='fg=#fab387,italic'
ZSH_HIGHLIGHT_STYLES[single_hyphen_option]='fg=#fab387'
ZSH_HIGHLIGHT_STYLES[double_hyphen_option]='fg=#fab387'
ZSH_HIGHLIGHT_STYLES[back_quoted_argument]='fg=#cba6f7'
## Keywords
## Built ins
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#a6e3a1'
ZSH_HIGHLIGHT_STYLES[reserved_word]='fg=#a6e3a1'
ZSH_HIGHLIGHT_STYLES[hashed_command]='fg=#a6e3a1'
## Punctuation
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=#f38ba8'
ZSH_HIGHLIGHT_STYLES[command_substitution_delimiter]='fg=#cdd6f4'
ZSH_HIGHLIGHT_STYLES[command_substitution_delimiter_unquoted]='fg=#cdd6f4'
ZSH_HIGHLIGHT_STYLES[process_substitution_delimiter]='fg=#cdd6f4'
ZSH_HIGHLIGHT_STYLES[back_quoted_argument_delimiter]='fg=#f38ba8'
ZSH_HIGHLIGHT_STYLES[back_double_quoted_argument]='fg=#f38ba8'
ZSH_HIGHLIGHT_STYLES[back_dollar_quoted_argument]='fg=#f38ba8'
## Serializable / Configuration Languages
## Storage
## Strings
ZSH_HIGHLIGHT_STYLES[command_substitution_quoted]='fg=#f9e2af'
ZSH_HIGHLIGHT_STYLES[command_substitution_delimiter_quoted]='fg=#f9e2af'
ZSH_HIGHLIGHT_STYLES[single_quoted_argument]='fg=#f9e2af'
ZSH_HIGHLIGHT_STYLES[single_quoted_argument_unclosed]='fg=#e64553'
ZSH_HIGHLIGHT_STYLES[double_quoted_argument]='fg=#f9e2af'
ZSH_HIGHLIGHT_STYLES[double_quoted_argument_unclosed]='fg=#e64553'
ZSH_HIGHLIGHT_STYLES[rc_quote]='fg=#f9e2af'
## Variables
ZSH_HIGHLIGHT_STYLES[dollar_quoted_argument]='fg=#cdd6f4'
ZSH_HIGHLIGHT_STYLES[dollar_quoted_argument_unclosed]='fg=#e64553'
ZSH_HIGHLIGHT_STYLES[dollar_double_quoted_argument]='fg=#cdd6f4'
ZSH_HIGHLIGHT_STYLES[assign]='fg=#cdd6f4'
ZSH_HIGHLIGHT_STYLES[named_fd]='fg=#cdd6f4'
ZSH_HIGHLIGHT_STYLES[numeric_fd]='fg=#cdd6f4'
## No category relevant in spec
ZSH_HIGHLIGHT_STYLES[unknown_token]='fg=#e64553'
ZSH_HIGHLIGHT_STYLES[path]='fg=#cdd6f4,underline'
ZSH_HIGHLIGHT_STYLES[path_pathseparator]='fg=#f38ba8,underline'
ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=#cdd6f4,underline'
ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]='fg=#f38ba8,underline'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=#cdd6f4'
ZSH_HIGHLIGHT_STYLES[history_expansion]='fg=#cba6f7'
#ZSH_HIGHLIGHT_STYLES[command-substitution]='fg=?'
#ZSH_HIGHLIGHT_STYLES[command-substitution-unquoted]='fg=?'
#ZSH_HIGHLIGHT_STYLES[process-substitution]='fg=?'
#ZSH_HIGHLIGHT_STYLES[arithmetic-expansion]='fg=?'
ZSH_HIGHLIGHT_STYLES[back_quoted_argument_unclosed]='fg=#e64553'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=#cdd6f4'
ZSH_HIGHLIGHT_STYLES[arg0]='fg=#cdd6f4'
ZSH_HIGHLIGHT_STYLES[default]='fg=#cdd6f4'
ZSH_HIGHLIGHT_STYLES[cursor]='fg=#cdd6f4'
ZSH_HIGHLIGHT_STYLES[predictive]='fg=#9399b2'
