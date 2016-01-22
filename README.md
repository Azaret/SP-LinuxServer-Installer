# SP-LinuxServer-Installer

## Prerequisitory
- NodeJS 4.x : https://nodejs.org/en/download/package-manager/
- NodeJS binary = node (not nodejs)
- <del> for node-gyp : have make and g++ (for debian `apt-get install build-essential make` </del>
    - Plus besoin depuis la release 0.19

## Install Script
just run

    bash <(wget -qO- https://raw.githubusercontent.com/purexo/SP-LinuxServer-Installer/master/install.sh)
    
and follow instruction.

## Update Script
**cd in your root Superpower folders**

**Stop your Superpowers Instance**

and run

    bash <(wget -qO- https://raw.githubusercontent.com/purexo/SP-LinuxServer-Installer/master/maj.sh)
