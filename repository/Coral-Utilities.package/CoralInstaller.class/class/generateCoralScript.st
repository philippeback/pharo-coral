script generation
generateCoralScript
	"self generateCoralScript"

	self createWrapperNamed: 'coral.sh' withContents:
'#! /bin/bash
vm=''', Smalltalk vmFullPath, '''
image=''', (Smalltalk getSystemAttribute: 1), '''

imageArgs=""
vmArgs=""
if [[ "$1" == "-i" ]]; then
    shift
    restore_tty="stty `stty -g`"
    stty -icanon -echo
fi
if [[ "$1" == "-d" ]]; then
    shift
    imageArgs+="-debug"
else
    vmArgs+="-headless"
fi

export LINES=`tput lines`
export COLUMNS=`tput cols`

tmp=`mktemp -d -t coral`
echo $tmp
mkfifo "$tmp"/stderr
tail -n +2 "$tmp"/stderr >&2 &

function cleanup() {
    rm -r "$tmp"
    eval $restore_tty
    echo "ok, bye..."
}
trap "cleanup ; trap 2 ; kill -2 $$" 1 2 3 13 15

if [[ $# > 0 ]]; then
   script="$1"
   shift
   "$vm" $vmArgs "$image" "`pwd`/$script" $imageArgs --coral "$@" 2>"$tmp"/stderr
else
   "$vm" $vmArgs "$image" "" 2>"$tmp"/stderr
fi

cleanup
'