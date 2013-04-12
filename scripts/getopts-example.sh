#!/bin/bash
#
# > ./getopts-example.sh -acb "example arg" param1 param2
# OPT: a, OPTARG: 
# OPT: c, OPTARG: 
# OPT: b, OPTARG: example arg
# Now we have...
# param1
# param2
# >
#

while getopts "ab:c" OPT
do
	case $OPT in
		a)
			echo "OPT: $OPT, OPTARG: $OPTARG"
			;;
		b)
			echo "OPT: $OPT, OPTARG: $OPTARG"
			;;
		c)
			echo "OPT: $OPT, OPTARG: $OPTARG"
			;;
		?)	
			echo "Unable to find $OPT, $OPTARG"
			;;
	esac
done

shift $((OPTIND-1))

echo "Now we have..."

for ARG in $@
do
	echo $ARG
done