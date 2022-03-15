#!/usr/bin/env bash
#
# Yubikey OpenPGP/GnuPG Card - PIN Reset script
#

# Currently modifying `shflags` library to include
# new flag types (i.e. enum type flags)
# need to decide best way to include this library
# in this script without having my development process
# break this script. Was trying to avoid duplicate
# copies of the same files but may not be a way around
# that for now. Will ponder and decide soon. 

# Source shflags
source ./lib/shflags/shflags

# Define command-line args
DEFINE_boolean 'debug' false 'enable debug mode' 'd'
DEFINE_boolean 'admin-pin' false 'enable reset of admin PIN' 'a'
DEFINE_boolean 'pin' false 'enable reset of user PIN' 'p'
DEFINE_boolean 'all' false 'enable reset of user and admin PINs'
DEFINE_
FLAGS_HELP=$(cat <<EOF
USAGE: $0 [flags] command
commands:
    list:       show cards visible to gpg
    verify:     verify working PIN
    backup:     backup current PIN
    reset:      reset PIN
EOF
)


debug() {
    # code for debug mode
    [ ${FLAGS_debug} -eq ${FLAGS_TRUE} ] && echo "DEBUG: $@" >$2
}

main() {
    # main script function
    
}

# parse command-line options
FLAGS "$@" || exit $?
eval set -- "${FLAGS_ARGV}"
main "$@"
