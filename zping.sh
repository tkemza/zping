#!/bin/bash

#   Author      :       Tkemza

#   Github      :       https://github.com/tkemza

#   Discord     :       n11kol1c

#   MIT LICENSE :       (C) 2024 tkemza 

# Zping - automated tool for checking websites responses and monitoring 

# Use this tool for educational purposes only! 

# The creator will not be responsible for the consequences caused by this tool!

# Reset attributes function
function reset_color() {
    # Reset color (exit codes)
	tput sgr0   # reset attributes
	tput op     # reset color
	return      # return attribute
}

# Colors function
function colors() {
    ## ANSI colors (FG & BG) (exit codes)
    # FG (exit codes)
    RED="$(printf '\033[31m')"  
    GREY="$(printf '\033[2;37m')"
    DARKGREEN="$(printf '\033[2;32m')"
    YELLOW="$(printf '\033[1;33m')"
    GREEN="$(printf '\033[32m')"  
    ORANGE="$(printf '\033[33m')"  
    BLUE="$(printf '\033[34m')"
    MAGENTA="$(printf '\033[35m')"  
    CYAN="$(printf '\033[36m')"  
    WHITE="$(printf '\033[37m')" 
    BLACK="$(printf '\033[30m')"
    # BG (exit codes)
    REDBG="$(printf '\033[41m')"  
    GREENBG="$(printf '\033[42m')"  
    ORANGEBG="$(printf '\033[43m')"  
    BLUEBG="$(printf '\033[44m')"
    MAGENTABG="$(printf '\033[45m')"  
    CYANBG="$(printf '\033[46m')"  
    WHITEBG="$(printf '\033[47m')" 
    BLACKBG="$(printf '\033[40m')"
    # Reset functions (exit codes)
    RESETBG="$(printf '\e[0m\n')"
    RESET="$(printf '\033[0m')"
}

# Text Attributes function
function textAttributes() {
    ## ANSI Attributes (exit codes)
    BOLD="$(printf '\033[1m')"
    ITALIC="$(printf '\033[3m')"
    DIM="$(printf '\033[2m')"
    # Reset function
    RESET="$(printf '\033[0m')"
}

# Main Banner
function mainBanner() {
    { colors; reset_color; textAttributes; }

    __version__=1.0.0
    cat <<- EOF
    ${CYAN}
    ███████╗██████╗░██╗███╗░░░██╗░██████╗░ 
    ╚══███╔╝██╔══██╗██║████╗░░██║██╔════╝░ 
    ░░███╔╝░██████╔╝██║██╔██╗░██║██║░░███╗
    ░███╔╝░░██╔═══╝░██║██║╚██╗██║██║░░░██║
    ███████╗██║░░░░░██║██║░╚████║╚██████╔╝
    ╚══════╝╚═╝░░░░░╚═╝╚═╝░░╚═══╝░╚═════╝░      ${__version__}
    ${RESETBG}  
EOF
}

# Loading Screen Console 
function showLoadingScreen() {
    # Define the loading message and the length of the progress bar
    {
        for ((i = 0 ; i <= 100 ; i+=9)); do
            # Simulate some loading process with a sleep
            sleep 0.6
            # Output the current progress for the gauge widget
            echo $i
            echo "XXX"
            echo "$i% - Loading, please wait..."
            echo ""
            echo "Use this tool for educational purposes only!"
            echo "The creator will not be responsible for the consequences caused by this tool!"
            echo ""
            echo "XXX"
        done
    } | dialog --title "Loading" --gauge "Please wait while the process completes..." 10 70 0
}

# Check for system update
function checkForUpdate() {
    updt=1
    if [[ $updt -eq 1 ]]; then
        sudo apt-get update -y
    else    
        printf ""
    fi
}

# Function to extract the domain from the URL
function extract_domain() {
    domain=$(echo "$1" | awk -F[/:] '{print $4}')
    echo $domain
}

# Function to validate if the URL has correct format
function validate_url() {
    if [[ "$1" =~ ^https?:// ]]; then
        return 0
    else
        return 1
    fi
}

# Main Menu
function mainMenu() {
    { colors; reset_color; textAttributes; }
    clear
    mainBanner

    while true; do
        # Asking for the website URL
        read -p " Enter the website-URL to attack: ${RESETBG}" url
        if [[ $url == "exit" ]]; then
            echo " Tool exited."
            sleep 1
            exit 0
        elif [[ $url == "pkg" ]]; then
            sudo apt-get update -y
        else
            # Validating the URL
            if ! validate_url "$url"; then
                echo "Invalid URL. Please enter a valid one (e.g., ${CYAN}https://example.com${RESETBG})"
                sleep 0.2
                exit 1
            fi

            # Extract the domain/hostname
            domain=$(extract_domain "$url")
            if [ -z "$domain" ]; then
                echo "Could not extract the domain from the URL."
                sleep 0.2
                exit 1
            fi
	    sleep 3.1
            echo ""
            echo " Entered Website Domain: ${DARKGREEN} $domain ${RESETBG}"
            echo " ${CYAN}════════════════════════════════${RESETBG}"
            echo ""
            # Ping the host
            echo "Pinging $domain..."
            sleep 1
            ping -c 5 $domain

            # DNS Lookup
            echo ""
            echo " ${CYAN}════════════════════════════════${RESETBG}"
            echo ""
            echo "DNS Lookup details:"
            sleep 1.2
            nslookup $domain

            # Fetch IP Information
            echo ""
            echo " ${CYAN}════════════════════════════════${RESETBG}"
            echo ""
            echo "IP Address information:"
            sleep 2
            host $domain

            # Get HTTP Header information using curl
            echo ""
            echo " ${CYAN}════════════════════════════════${RESETBG}"
            echo ""
            echo "Fetching HTTP headers:"
            sleep 1
            curl -I $url
            echo ""

            echo " ${CYAN}════════════════════════════════${RESETBG}"
            echo ""
            sleep 0.9
            echo "Traceroute to ${DARKGREEN}$domain:${RESETBG}"
            traceroute $domain
	    echo ""
     	    echo ""
	    sleep 1.2
        fi
    done
}

mainMenu
