#!/bin/bash

GITHUB_PROJECT="trilogy-group"
REPO=$1
NEW="new"
DELETE="delete"
UPDATE="update"

PACKAGE_PATH="../../packages/"
CLA="cla.json"
DEFAULT="default.json"
PRIORITY="priority.json"
STATUS="status.json"
TYPE="type.json"

echo "Project name: $GITHUB_PROJECT"

if [ "$REPO" = "" ]; then
    echo "Repo name is empty"
    echo "Please add repo name after command: ./add-label.sh schoolloop-mobile-automation"
    exit
else
    echo "Repo name: $1"
fi;

echo "To create new labels click ENTER"
echo "To delete labels enter 'd' and click ENTER"
echo "To update color for labels enter 'u' and click ENTER"

while :
do
  read INPUT_STRING
  case $INPUT_STRING in
	u)
		COMMAND=$UPDATE
		break
		;;
    d)
		COMMAND=$DELETE
		break
		;;
	*)
		COMMAND=$NEW
		break
		;;
  esac
done
echo "Executing command: $COMMAND"

execute_label()
{
  COMMAND=$1
  LABEL=$2
  COLOR=$3
  REPO=$4

  echo "Command: $COMMAND, Label: $LABEL, Color: $COLOR, Repo: $REPO"

if [ "$COMMAND" = "$DELETE" ]
then
    gh re --label --$COMMAND $LABEL --org $GITHUB_PROJECT --repo $REPO
else
    gh re --label --$COMMAND $LABEL --color $COLOR --org $GITHUB_PROJECT --repo $REPO
fi
}

execute_label $COMMAND "bug"  "fc2929" $REPO
execute_label $COMMAND "duplicate"  "cccccc" $REPO
execute_label $COMMAND "enhancement"  "84b6eb" $REPO
execute_label $COMMAND "help wanted"  "159818" $REPO
execute_label $COMMAND "invalid"  "e6e6e6" $REPO
execute_label $COMMAND "question"  "cc317c" $REPO
execute_label $COMMAND "wontfix"  "ffffff" $REPO
execute_label $COMMAND "protractor"  "9a82ce" $REPO
execute_label $COMMAND "conflicts"  "f27d9b" $REPO
execute_label $COMMAND "dependent"  "cccccc" $REPO
execute_label $COMMAND "missing ci link"  "f2f762" $REPO
execute_label $COMMAND "failing tests"  "cc317c" $REPO

execute_label $COMMAND "Priority: Low"  "009800" $REPO
execute_label $COMMAND "Priority: Medium"  "fbca04" $REPO
execute_label $COMMAND "Priority: High"  "eb6420" $REPO
execute_label $COMMAND "Priority: Critical"  "e11d21" $REPO

execute_label $COMMAND "Abandoned"  "000000" $REPO
execute_label $COMMAND "Accepted"  "009800" $REPO
execute_label $COMMAND "Available"  "bfe5bf" $REPO
execute_label $COMMAND "Blocked"  "e11d21" $REPO
execute_label $COMMAND "Completed"  "006b75" $REPO
execute_label $COMMAND "In Progress"  "cccccc" $REPO
execute_label $COMMAND "On Hold"  "e11d21" $REPO
execute_label $COMMAND "Pending"  "fef2c0" $REPO
execute_label $COMMAND "Review Needed"  "fbca04" $REPO
execute_label $COMMAND "Revision Needed"  "e11d21" $REPO
execute_label $COMMAND "Ready For Review"  "128A0C" $REPO
execute_label $COMMAND "Ready For External Review"  "fef2c0" $REPO
execute_label $COMMAND "Ready For Merge"  "8eed28" $REPO
execute_label $COMMAND "Requires Fix"  "e11d21" $REPO

execute_label $COMMAND "Bug"  "e11d21" $REPO
execute_label $COMMAND "Maintenance"  "fbca04" $REPO
execute_label $COMMAND "Enhancement"  "84b6eb" $REPO
execute_label $COMMAND "Question"  "cc317c" $REPO
execute_label $COMMAND "Test Automation"  "0c6b9b" $REPO
execute_label $COMMAND "New test"  "84b6eb" $REPO
execute_label $COMMAND "Failure fix"  "fbca04" $REPO
execute_label $COMMAND "Automation framework"  "cc317c" $REPO