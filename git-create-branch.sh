#!/bin/bash

function show_usage()
{
	echo "Usage: `basename $0` <new_branch> [from_branch]"
	exit
}

FROM_BRANCH="master"

if [ $# -eq '0' ]
then
	show_usage
elif [ $# -eq 2 ]
then
	FROM_BRANCH="$2"
fi

NEW_BRANCH="$1"

git fetch
git checkout -b "$NEW_BRANCH" "$FROM_BRANCH"
git push origin "$NEW_BRANCH"