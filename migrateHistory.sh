#!/bin/bash
origin_variable="$(git config --local core.editor)"

if [ -z "$1" ]
then
      echo "Please provide file name with dictionary as first argument!"
	  exit 1
fi
if [ ! -f "$1" ]
then
      echo "Dictionary '$1' does not exist!"
	  exit 1
fi

git config --local core.editor "./replaceCommitMessages $1"
GIT_SEQUENCE_EDITOR="./replacePickIntoReword" git rebase -i HEAD~4
git config --local core.editor "$origin_variable"