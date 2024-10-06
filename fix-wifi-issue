#!/bin/bash

# Check if the system is running a Ubuntu-based OS
if grep -q "ID_LIKE=\"ubuntu debian\"" /etc/os-release; then
  # Check if a Wi-Fi adapter is present
  if lspci -knn | grep -iA3 net | grep -iq 'wifi'; then
    # Disable Airplane mode
    nmcli radio all off
    echo "Airplane mode disabled"

    # Enable Wi-Fi
    nmcli radio wifi on
    echo "Wi-Fi enabled"

    # Restart the NetworkManager
    sudo systemctl restart NetworkManager
  else
    echo "No Wi-Fi card found in the system."
  fi
else
  echo "This script is designed to run on Ubuntu-based systems only."
fi
