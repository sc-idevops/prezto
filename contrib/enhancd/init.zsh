#
# Integrates b4b4r07/enhancd into Prezto.
#
# Authors:
#   Martin Zeman <martin.zeman@pm.me>
#

# Specified list of one or more visual filters.
zstyle -s ":prezto:module:enhancd" filter "fzf"

# Change the command name of enhancd
zstyle -s ":prezto:module:enhancd" command "cd"

# Source module files.
source "${0:h}/external/init.sh" || return 1
