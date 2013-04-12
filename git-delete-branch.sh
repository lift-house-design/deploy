#!/bin/bash

function show_usage()
{
	echo "Usage: `basename $0` <branch_name>"
	exit
}

if [ $# -eq '0' ]
then
	show_usage
fi

BRANCH_NAME="$1"

git checkout master
git branch -D "$BRANCH_NAME"
git push origin --delete "$BRANCH_NAME"
git fetch