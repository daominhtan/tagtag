#!/bin/bash
ver=v3.0.0
env=sb
dateString=$(date '+%Y%m%d%H%M%S')

push=no

helpFunction()
{
   echo ""
   echo "Usage: $0 -v <version> -e <env> -p <do push now>"
   echo -e "\t-v Description of what is version: v3.0.0 - (default: v3.0.0)"
   echo -e "\t-e Description of what is env: sb, prod - (default: sb)"
   echo -e "\t-p Description of what is push now: true, false - (default: false)"
   exit 1 # Exit script after printing help
}

while getopts "v:e:p:" opt
do
   case "$opt" in
      v ) parameterV="$OPTARG" ;;
      e ) parameterE="$OPTARG" ;;
      p ) parameterP="$OPTARG" ;;
      ? ) helpFunction ;; # Print helpFunction in case parameter is non-existent
   esac
done

# Print helpFunction in case parameters are empty
if ! [ -z "$1" ] && ( [ -z "$parameterV" ] && [ -z "$parameterE" ] && [ -z "$parameterP" ] )
then
   echo "Parameters are invalid";
   helpFunction
fi

# Begin script in case all parameters are correct
if ! [ -z "$parameterV" ]
then ver=$parameterV 
fi
if ! [ -z "$parameterE" ] 
then env=$parameterE 
fi
if ! [ -z "$parameterP" ] 
then push=$parameterP 
fi

echo "Ver: $ver";
echo "Env: $env";
echo "Push: $push";

tag=$ver-$dateString-$env
echo $tag
git tag $tag  
echo "Created tag: $tag"
# ---------PUSHING----------

echo "Pres y to PUSH NOW: [ git push origin $tag ], Press 'any Key' to exit"
while : ; do
read -n 1 k <&1
if [[ $k = y ]] ; then
    echo -e "\nDoing push..."
    git push origin $tag  
    break
else 
    echo "Do not push"
    break;
fi
done

echo "Done."

