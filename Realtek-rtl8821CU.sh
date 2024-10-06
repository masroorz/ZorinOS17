# This script installs the necessary drivers, reboots the system, checks the Wi-Fi adapter, and handles the installation of the rtl8821cu driver if needed. 
# If the user indicates that the adapter is still not working after the second reboot, the script opens a web browser to search for more information on the rtl8821cu driver
# save the script in a file e.g. install_realtek_rtl8821CU.sh 
# run the script as sudo bash install_realtek_rtl8821CU.sh first_run
# After the first reboot, if the driver is installed then no need to run the script, 
# if however, the Realtek drivers are still missing, then the script should be run again with the argument "second_run"
# e.g. sudo bash install_realtek_rtl8821CU.sh second_run

#!/bin/bash

# Function to install the necessary drivers
install_drivers() {
    echo "Updating package list..."
    sudo apt update
    echo "Installing Realtek RTL88XXAU DKMS driver..."
    sudo apt install -y realtek-rtl88xxau-dkms
    echo "Installation complete. The system will now reboot."
    sudo reboot
}

# Function to check Wi-Fi adapter status
check_wifi_adapter() {
    read -p "Is the Wi-Fi adapter working? (yes/no): " response
    if [[ "$response" =~ ^[Yy][Ee][Ss]$ ]]; then
        echo "Wi-Fi adapter is working. Exiting the script."
        exit 0
    else
        echo "Installing RTL8821CU DKMS driver..."
        sudo apt install -y rtl8821cu-dkms
        echo "Installation complete. The system will now reboot."
        sudo reboot
    fi
}

# Function to check Wi-Fi adapter status after the second reboot
check_wifi_adapter_after_second_reboot() {
    read -p "Is the Wi-Fi adapter now able to see wireless access points? (yes/no): " response
    if [[ "$response" =~ ^[Yy][Ee][Ss]$ ]]; then
        echo "Wi-Fi adapter is working. Exiting the script."
        exit 0
    else
        echo "Opening web browser to search for RTL8821CU driver..."
        xdg-open "https://www.google.com/search?q=rtl8821cu+driver"
        exit 0
    fi
}

# Main script logic
if [ "$1" == "first_run" ]; then
    install_drivers
elif [ "$1" == "second_run" ]; then
    check_wifi_adapter_after_second_reboot
else
    # First run of the script
    install_drivers
fi

