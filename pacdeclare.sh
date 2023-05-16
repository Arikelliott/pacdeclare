#! /bin/bash

# OUTLINE:
# check if running or just exporting
#   (so like, run an if/else statement.
#   If the user enters "pacdeclare sync", install/uninstall/etc all software.
#   If "pacdeclare export", export all existing explicitly installed packages to a new config.
#   If just "pacdeclare", ask for more info.)
# 
# If syncing, make sure to install everything that's listed in the config
# (Do I make a system for making comments in the config?
# If so, how does it figure out which lines to change, and with what info?
# Does it delete comments for packages it's removing? Is that the user's job?)
# 
# If exporting, export a list of packages to the 


# CHATGPT SECTION: --DO NOT USE THIS!!--
# something is very much not working!
# It started uninstalling everything, soooo yeah

# Read the package list from the text file
packages=$(cat packages.txt)

# Loop through the packages
for package in $packages; do
  # Check if the package is installed
  if pacman -Qs "^$package$" >/dev/null ; then
    # Package is installed, remove it
    echo "Removing $package"
    sudo pacman -Rs --noconfirm $package
  else
    # Package is not installed, install it
    echo "Installing $package"
    sudo pacman -S --noconfirm $package
  fi
done

# Try this https://wiki.archlinux.org/title/Pacman/Tips_and_tricks#Install_packages_from_a_list
# Instructions to install from from a package list, exclude AUR packages, and remove non-present packages