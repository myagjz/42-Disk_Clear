#!/bin/bash
# Colors
purple=$'\033[1;34m'
reset=$'\033[0;39m'
red=$'\033[0;31m'
green=$'\033[0;32m'

# Commands
clear;
echo "--------------------------------------------------------------------------------"
initial_df=$(df -h . | grep --color=always -E "Size|Used|Avail|Capacity|[0-9]*\.*[0-9]*Mi|[0-9]*\.*[0-9]*Gi|[0-9]+\.*[0-9]+% |$")
echo -e "${purple}Valid field:\n${reset}${initial_df}${reset}"
echo ""
echo "--------------------------------------------------------------------------------"
cd;
read -n1 -p "${purple}Do you want to free up space on your computer?[${green}y${purple}/${red}N${purple}]${reset} " input
echo ""

if [ -n "$input" ] && [ "$input" = "y" ]; then
    echo "Cleaning is starting please wait...";
    echo "*************************************************************************************"
    echo "./.Trash/* Cleaning up please wait..."
    rm -rf ./.Trash/*;
    echo "./.cache/* Cleaning up please wait..."
    rm -rf ./.cache/*;
    echo "./Library/Caches/* Cleaning up please wait..."
    rm -rf ./Library/Caches/*;
    echo "./Library/Containers/com.docker.docker/* Cleaning up please wait..."
    rm -rf ./Library/Containers/com.docker.docker/*;
    echo "./Library/Containers/* Cleaning up please wait..."
    rm -rf ./Library/Containers/*;
    echo "./Library/Application Support/Code/User/* Cleaning up please wait..."
    rm -rf ./Library/Application Support/Code/User/*;
    echo "./Library/Application Support/Code/CachedData/* Cleaning up please wait..."
    rm -rf ./Library/Application Support/Code/CachedData/*;
    echo "./Library/Developer/CoreSimulator/* Cleaning up please wait..."
    rm -rf ./Library/Developer/CoreSimulator/*;
    echo "*************************************************************************************"
    echo "-------------------------------------------------------------------------------------"
    /bin/rm -rf "$HOME"/Library/*.42* &>/dev/null
    /bin/rm -rf "$HOME"/*.42* &>/dev/null
    /bin/rm -rf "$HOME"/.zcompdump* &>/dev/null
    /bin/rm -rf "$HOME"/.cocoapods.42_cache_bak* &>/dev/null
    /bin/chmod -R 777 "$HOME"/Library/Caches/Homebrew &>/dev/null
    /bin/rm -rf "$HOME"/Library/Caches/* &>/dev/null
    /bin/rm -rf "$HOME"/Library/Application\ Support/Caches/* &>/dev/null
    /bin/rm -rf "$HOME"/Library/Application\ Support/Slack/Service\ Worker/CacheStorage/* &>/dev/null
    /bin/rm -rf "$HOME"/Library/Application\ Support/Slack/Cache/* &>/dev/null
    /bin/rm -rf "$HOME"/Library/Application\ Support/discord/Cache/* &>/dev/null
    /bin/rm -rf "$HOME"/Library/Application\ Support/discord/Code\ Cache/js* &>/dev/null
    /bin/rm -rf "$HOME"/Library/Application\ Support/discord/Crashpad/completed/*  &>/dev/null
    /bin/rm -rf "$HOME"/Library/Application\ Support/Code/Cache/* &>/dev/null
    /bin/rm -rf "$HOME"/Library/Application\ Support/Code/CachedData/* &>/dev/null
    /bin/rm -rf "$HOME"/Library/Application\ Support/Code/Crashpad/completed/* &>/dev/null
    /bin/rm -rf "$HOME"/Library/Application\ Support/Code/User/workspaceStorage/* &>/dev/null
    /bin/rm -rf "$HOME"/Library/Application\ Support/Google/Chrome/Profile\ [0-9]/Service\ Worker/CacheStorage/* &>/dev/null
    /bin/rm -rf "$HOME"/Library/Application\ Support/Google/Chrome/Default/Service\ Worker/CacheStorage/* &>/dev/null
    /bin/rm -rf "$HOME"/Library/Application\ Support/Google/Chrome/Profile\ [0-9]/Application\ Cache/* &>/dev/null
    /bin/rm -rf "$HOME"/Library/Application\ Support/Google/Chrome/Default/Application\ Cache/* &>/dev/null
    /bin/rm -rf "$HOME"/Library/Application\ Support/Google/Chrome/Crashpad/completed/* &>/dev/null
    /bin/rm -rf "$HOME"/Library/Application\ Support/Chromium/Default/File\ System &>/dev/null
    /bin/rm -rf "$HOME"/Library/Application\ Support/Chromium/Profile\ [0-9]/File\ System &>/dev/null
    /bin/rm -rf "$HOME"/Library/Application\ Support/Google/Chrome/Default/File\ System &>/dev/null
    /bin/rm -rf "$HOME"/Library/Application\ Support/Google/Chrome/Profile\ [0-9]/File\ System &>/dev/null
    /bin/rm -rf "$HOME"/Desktop/Piscine\ Rules\ *.mp4
    /bin/rm -rf "$HOME"/Desktop/PLAY_ME.webloc
    find "$HOME"/Desktop -name .DS_Store -depth -exec /bin/rm {} \; &>/dev/null
    echo "${green}Cleaning done."
    else
    echo "Cleaning was not done.";
    fi
read -n1 -p "${purple}Do you want to clean the Downloads folder as well?[${green}y${purple}/${red}N${purple}]${reset} " input
echo ""
if [ -n "$input" ] && [ "$input" = "y" ]; then
        echo "Cleaning downloads please wait...";
		rm -rf ./Downloads/*;
        echo "${green}Cleaning done."
    echo "${reset}--------------------------------------------------------------------------------"
    echo -e "${purple}\nArea before cleaning:\n${reset}${initial_df}${purple}\n\nArea after cleaning:${reset}"
        df -h . | grep --color=always -E "Size|Used|Avail|Capacity|[0-9]*\.*[0-9]*Mi|[0-9]*\.*[0-9]*Gi|[0-9]+\.*[0-9]+% |$"
    echo "--------------------------------------------------------------------------------"
    else
    echo "Downloads are not cleared.";
    echo "--------------------------------------------------------------------------------"
    echo -e "${purple}\nArea before cleaning:\n${reset}${initial_df}${purple}\n\nArea after cleaning:${reset}"
        df -h . | grep --color=always -E "Size|Used|Avail|Capacity|[0-9]*\.*[0-9]*Mi|[0-9]*\.*[0-9]*Gi|[0-9]+\.*[0-9]+% |$"
    echo "--------------------------------------------------------------------------------"

	fi
