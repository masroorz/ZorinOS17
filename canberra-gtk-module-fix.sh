# To fix the following error messages:
# Gtk-Message: 15:13:17.259: Failed to load module "canberra-gtk-module"
# Gtk-Message: 15:13:17.259: Failed to load module "canberra-gtk-module"

# Although it doesn't affect the functionality of applications, we can resolve the message by installing the necessary packages.


#!/bin/bash

# Function to install the required canberra-gtk-module
install_canberra_module() {
    echo "Updating package list..."
    sudo apt update
    
    echo "Installing canberra-gtk-module..."
    sudo apt install -y libcanberra-gtk-module libcanberra-gtk3-module
    
    echo "Installation complete. The warning messages should no longer appear."
}

# Run the installation function
install_canberra_module
