# Note: The code below is for the NVIDIA GeForce RTX 3060 graphics card, which is commonly found in the Dell G15 5520. If you have a different graphics card, you may need to install a different driver version.
# This script adds the NVIDIA PPA, installs the NVIDIA driver, reboots the system, checks for the driver installation, and prompts the user about using Steam. If the user confirms, it runs nvidia-xconfig
# save the code below in a file called nvidia_driver_installation.sh, then Execute the script with superuser privileges, e.g sudo bash nvidia_driver_installation.sh

#!/bin/bash

# Function to install NVIDIA drivers
install_nvidia_drivers() {
    echo "Adding NVIDIA PPA..."
    sudo add-apt-repository ppa:graphics-drivers/ppa -y
    echo "Updating package list..."
    sudo apt update
    echo "Installing NVIDIA driver..."
    sudo apt install -y nvidia-driver-520
    echo "Installation complete. The system will now reboot."
    sudo reboot
}

# Function to check if NVIDIA driver is installed
check_nvidia_driver() {
    echo "Checking NVIDIA driver installation..."
    if command -v nvidia-smi &> /dev/null; then
        echo "NVIDIA driver is installed. Here are the details:"
        nvidia-smi
    else
        echo "NVIDIA driver is not installed. Please run the installation script again."
        exit 1
    fi
}

# Function to configure NVIDIA settings for Steam
configure_steam() {
    read -p "Are you using Steam for gaming? (yes/no): " response
    if [[ "$response" =~ ^[Yy][Ee][Ss]$ ]]; then
        echo "Configuring NVIDIA settings for Steam..."
        sudo nvidia-xconfig
        echo "Configuration complete. You may need to open the NVIDIA X Server Settings application to adjust further settings."
    else
        echo "No additional configuration for Steam will be performed."
    fi
}

# Main script logic
install_nvidia_drivers

# Wait for the system to reboot and check for NVIDIA driver installation
check_nvidia_driver

# Prompt for Steam configuration
configure_steam
