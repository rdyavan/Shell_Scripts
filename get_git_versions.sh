#!/usr/bin/bash
#Author : Rakesh

which wget 1>/dev/null 2>/dev/null
if [ $? -ne 0 ]
then
	echo "----------------------------"
	echo "Please install get and retry"
	echo "----------------------------"
	exit 1
fi
if [ -e "index.html" ]
then
	echo "Deleting the Older file"
	rm -rf index.html
	echo "Deleted the older file."
	echo " ==============================================================="
fi

url="https://mirrors.edge.kernel.org/pub/software/scm/git/"
wget $url 1>/dev/null 2>/dev/null
if [ $? -ne 0 ]
then
	echo "Unable to download the info from $url"
	exit 2
else
	echo "index file downloaded successfully."
fi

declare -a get_vers
echo " ============Please wait system collecting data from website===================="
date
while read line
do 
	get_vers+=($(echo $line | sed -n '/git-\([0-9]\+\.\)\+tar.gz/p' | awk -F '"' '{ print $2 }' | cut -c 5- | awk -F '.tar.gz' '{print $1}'))

#	sleep 1
done < index.html
date
echo "The all the available versions are:"
#echo "${get_vers[*]}"
cnt=0
no_vers=${#get_vers[*]}
WIDTH=20
for each_vers in ${get_vers[*]}
do
#	echo -e "\t\t ${get_vers[$cnt]}   \\t  ${get_vers[$((cnt+1))]}  \\t  ${get_vers[$((cnt+2))]}"
	printf "%-*s %-*s %-*s \n" $WIDTH ${get_vers[$cnt]}  $WIDTH  ${get_vers[$((cnt+1))]}  $WIDTH  ${get_vers[$((cnt+2))]}
	cnt=$((cnt+3))
	if [ $cnt -ge $no_vers ]
	then
		break
	fi	
done
