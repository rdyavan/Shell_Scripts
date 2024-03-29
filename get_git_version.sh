#!/bin/bash

#Version: 1.0

COLUMNS=$(tput cols)

prRed(){

  echo -e "\033[91m$1 \033[00m"

}

prGreen(){

  echo -e "\033[92m$1 \033[00m"

}

prYellow(){

  echo -e "\033[93m$1 \033[00m"

}

prPurple(){

  echo -e "\033[95m$1 \033[00m"

}

prCyan(){

  echo -e "\033[96m$1 \033[00m"

}

prHeader(){

for each in $(seq 1 $COLUMNS)

do

   echo -n $1

done

}

prtxtCentre(){

title=$1

printf "%*s\n" $(((${#title}+$COLUMNS)/2)) "$title"

}

download_git_versions_info(){

GIT_VERS_URL="https://mirrors.edge.kernel.org/pub/software/scm/git/"

GIT_VERS_FILE="git_vers_info.html"

if [ -e "${GIT_VERS_FILE}" ]

then

    prYellow "Found old ${GIT_VERS_FILE}.Deleting this old file and downloading new content.Please wait..."

    rm -rf ${GIT_VERS_FILE}

else

    prGreen "Downloading git vers info. Please wait..."

fi

which wget 1>/dev/null 2>&1

if [ $? -ne 0 ]

then

   prRed "Sorry unable to download , wget command is not installed on this host. Please install it and retry"

   exit 2

fi

wget ${GIT_VERS_URL} --output-document=${GIT_VERS_FILE} 1>/dev/null 2>&1

if [ $? -ne 0 ]

then

   prRed "Unable to download. Please try the below command manually and verify"

   prRed "wget ${GIT_VERS_URL} --output-document=${GIT_VERS_FILE}"

else

   prGreen "Successfully downloaded git vers info from git-scm and stored the info into a file: ${GIT_VERS_FILE}"

fi

}

diplay_all_available_git_versions(){

  if [ ! -e ${GIT_VERS_FILE} ]

  then

    prRed "Unable to find the ${GIT_VERS_FILE}"

  fi

  prPurple "Sorting git versions. Please wait..."

  while read line

  do

    git_vers+=($(echo $line | sed -n '/git-\([0-9]\+\.\)\+tar.gz/p'|awk -F '"' '{ print $2 }'|cut -c 5- | awk -F '.tar.gz' '{ print $1}'))

done < ${GIT_VERS_FILE}

  #echo ${#git_vers[@]}

  prHeader "="

  prtxtCentre "Displaying all available git versions"

  cnt=0

  no_vers=${#git_vers[*]}

  WIDTH=14

  prHeader "="

  for each_ver in ${git_vers[*]}

  do

   printf "%-*s %-*s %-*s %-*s %-*s %-*s %-*s %-*s\n" $WIDTH  ${git_vers[$cnt]}  $WIDTH ${git_vers[$((cnt+1))]} $WIDTH ${git_vers[$((cnt+2))]} $WIDTH ${git_vers[$((cnt+3))]} $WIDTH  ${git_vers[$((cnt+4))]} $WIDTH  ${git_vers[$((cnt+5))]}  $WIDTH  ${git_vers[$((cnt+6))]} $WIDTH  ${git_vers[$((cnt+7))]}

   cnt=$((cnt+8))

   if [ $cnt -ge $no_vers ]

   then

     break

   fi

  done

  prHeader "_"

}

main() {

  clear

  prHeader ":"

  prtxtCentre "Welcome to Automate Git installation using shell script"

  prHeader ":"

  prCyan "Checking all available git versions from official git-scm websites. Please wait...."

  download_git_versions_info

  diplay_all_available_git_versions

}

main
