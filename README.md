<p align="center" style="border-radius: 15px; border: 1px solid blue;">
    <img src="pics/galazping.png">
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Version-1.0.0-green?style=for-the-badge">
  <img src="https://img.shields.io/github/license/tkemza/zping?style=for-the-badge">
  <img src="https://img.shields.io/github/stars/tkemza/zping?style=for-the-badge">
  <img src="https://img.shields.io/github/issues/tkemza/zping?color=red&style=for-the-badge">
  <img src="https://img.shields.io/github/forks/tkemza/zping?color=teal&style=for-the-badge">
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Open%20Source-Yes-darkgreen?style=flat-square">
  <img src="https://img.shields.io/badge/Maintained%3F-Yes-lightblue?style=flat-square">
  <img src="https://img.shields.io/badge/Written%20In-Bash-darkcyan?style=flat-square">
  <img src="https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Ftkemza%2Fzping&title=Visitors&edge_flat=false"/></a>
</p>

<h1 align="center" style="font-size: 20px;"><b>Zping</b></h1>

##

<h2><p align="center"><font size="12">Disclaimer</font></p></h2>

<b>A tool that is by members inside GreyHat hacker declarations and organizations better known as <i>ZeroByte</i>, is made for penetration testing and pinging of hosts, ip addresses, domains, DNSs, Fetching HTTP headers and Traceroutes, which works efficiently and quickly while safely navigating web hacker mazes without leaving behind no trace of getting the desired victim site information. We, as the creators of this tool, retain the copyright and have no tolerance for root and source code theft, so this tool is placed under the GPL license, which retains the aforementioned rights. The tool was created to demonstrate how websites and their feedback work, however, it violates the privacy and protection rights of all websites, especially those that are not under protection, which can be the main attraction for hackers due to very fast access and anonymous theft of website data. Also, as the creators of this tool, we are not responsible and will not be responsible if someone violates any rights by using this tool.</b>

<i>Any actions and or activities related to <b>Zping</b> is solely your responsibility. The misuse of this toolkit can result in criminal charges brought against the persons in question. The contributors will not be held responsible in the event any criminal charges be brought against any individuals misusing this toolkit to break the law.

This toolkit contains materials that can be potentially damaging or dangerous for social media websites. Refer to the laws in your province/country before accessing, using,or in any other way utilizing this in a wrong way.

<b>This Tool is made for educational purposes only!</b> Do not attempt to violate the law with anything contained here. If this is your intention, then Get the hell out of here!

It only demonstrates <b>"how scanning works"</b>. You shall not misuse the information to gain unauthorized access to someones social media. However you may try out this at your own risk. <b>The creator will not be responsible for the consequences caused by this tool!</b></i>


# Zping

**Zping is an automated tool designed for checking the status of websites. It is meant for educational purposes only, and the creator is not responsible for any consequences caused by this tool.**

-----

## Table of Contents
- [Run Installation](#runinstalattion)
- [Features](#features)
- [Requirements](#equirements)
- [Installation](#installation)
- [Usage](#usage)
- [Makefile](#makefile)
- [Docker](#docker)

-----
# Run Installation

1. Install python3 and pip3:
    ```
    sudo apt install python3
    sudo apt install python3-pip
2. Check if version is valid:
    ```
    python3 --version
    pip3 --version
3. Run `install.py`:
    ```
    cd package
    python3 packageinstall.py
-----

## Features

| **Feature**              | **Description**                                                |
|--------------------------|----------------------------------------------------------------|
| **Website Status Check** | Monitors HTTP status codes of websites.                        |
| **Colorful Output**      | Displays a dynamic and colorful terminal banner using `lolcat`.|
| **Git Integration**      | Pulls updates from a Git repository.                           |

## Requirements

| Requirement                | Description                                                    | Installation Command                |
|----------------------------|----------------------------------------------------------------|-------------------------------------|
| **Bash**                   | Shell interpreter required for running the script.             | Included by default in most systems.|
| **curl**                   | Command-line tool for transferring data with URLs.             | `sudo apt-get install curl`         |
| **lolcat**                 | Command-line utility for colorizing text output.               | `gem install lolcat`                |
| **git**                    | Version control system for managing updates.                   | `sudo apt-get install git`          |
| **tput**                   | Utility for terminal control.                                  | Included by default in most systems.|

## Installation

| Step                      | Command or Action                                         |
|---------------------------|-----------------------------------------------------------|
| **Clone the Repository**  | `git clone https://github.com/tkemza/zping.git`           |
| **Navigate to Directory** | `cd zping`                                                |
| **Make Executable**       | `chmod +x zping.sh`                                       |
| **Install Packages**      | `sudo apt-get update && sudo apt-get install curl lolcat` |
| **Install lolcat**        | `gem install lolcat`                                      |

-----
## Usage

To use this tool:

1. **Clone the Repository:**
   ```
   git clone https://github.com/tkemza/zping.git
3. **Enter directory:**
    ```
    cd zping
2. **Run the Script**: Execute the script using:
   ```
   ./zping.sh
3. or:
    ```
    chmod +x zping.sh
    bash zping.sh
4. To exit a tool, enter:
    ```
    exit
-----
## Makefile 

- To run makefile, type:
    ```
    cd makefile
    make makezping
-----
## Docker

- To Run this script on Docker, type:
    ```
    docker build -t zping-tool .
    docker run --rm -it zping-tool

