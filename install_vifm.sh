#!/bin/sh

if [ "$(which vifm)" = "" ]; then
    echo "vifm installing..."
    sudo apt-get update
    sudo apt-get install vifm
else
    YELLOW='\033[0;33m'
    NC='\033[0m'
    echo "${YELLOW} vifm already installed!!! ${NC}"
fi

backup_conf()
{
    echo "waiting: backup .config ..."

    NOW=`date +"%Y%m%d_%H%M%S"`
    mkdir -p tmp-$NOW
    cp ~/.config tmp-$NOW/config -r
}

copy_vifm()
{
    curl -fLo ~/.config/vifm/vifmrc --create-dirs https://raw.githubusercontent.com/al-hub/vifm/main/vifmrc

    curl -fLo ~/.config/vifm/scripts/compare-cmd --create-dirs https://raw.githubusercontent.com/al-hub/vifm/main/scripts/comapre-cmd
    curl -fLo ~/.config/vifm/scripts/imgc --create-dirs https://raw.githubusercontent.com/al-hub/vifm/main/scripts/imgc
    curl -fLo ~/.config/vifm/scripts/imgt --create-dirs https://raw.githubusercontent.com/al-hub/vifm/main/scripts/imgt
    curl -fLo ~/.config/vifm/colors/Default.vifm --create-dirs https://raw.githubusercontent.com/al-hub/vifm/main/colors/Default.vifm
}

backup_conf

read -p "will you force copy vifm configure files?(y/n) :" yn 
case $yn in
       	[Yy]* ) copy_vifm ; break;;
       	[Nn]* ) exit;;
esac
