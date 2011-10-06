script generation
generateCoralScript
	"self generateCoralScript"

	self createWrapperNamed: 'coral.sh' withContents:
'#! /bin/bash
vm="/Applications/Developer/Squeak/Cog Carbon.app/Contents/MacOS/CogVM"
image="/Users/damien/Documents/Coral/Coral.image"

function usage() {
    echo "Usage: `basename $0` [-di] [script-file.coral]"
    echo "       `basename $0` [-h]"
    echo
    echo "  -d  debug mode: run headful and do not automatically quit"
    echo "  -i  interactive mode: handle input on a character-wise basis instead of line-wise"
    echo "  -h  display this help message"
}

imageArgs=""
vmArgs=""
debug="no"

while getopts ":idh" opt; do
    echo "FOO $opt $OPTIND $@"
    case $opt in
        i)  # interactive mode, configure the terminal for charwise input
            restore_tty="stty `stty -g`"
            stty -icanon -echo
            ;;
        d)  # debug, headful mode
            debug="yes"
            ;;
        h)
            usage
            exit 0
            ;;
        \?)
            echo "Invalid option: -$OPTARG" >&2
            usage
            exit 1
            ;;
    esac
done
shift $(($OPTIND - 1))

if [[ "$debug" == "yes" ]]; then
    imageArgs+="-debug"
else
    vmArgs+="-headless"
fi
unset debug

export LINES=`tput lines`
export COLUMNS=`tput cols`

# we need to filter stderr but without redirecting it to stdout
# so, setup a named pipe and make sure to clean it afterwards
tmp=`mktemp -d -t coral`
mkfifo "$tmp"/stderr
tail -n +2 "$tmp"/stderr >&2 &

function cleanup() {
    rm -r "$tmp"
    eval $restore_tty
    echo "ok, bye..."
}
trap "cleanup ; trap 2 ; kill -2 $$" 1 2 3 13 15

# finally...
if [[ $# > 0 ]]; then
   script="$1"
   shift
   "$vm" $vmArgs "$image" "`pwd`/$script" $imageArgs --coral "$@" 2>"$tmp"/stderr
else
   "$vm" $vmArgs "$image" "" $imageArgs 2>"$tmp"/stderr
fi

cleanup
'