# ZorinOS17
Issues related to Zorin OS
Sure! Here’s a sample README file for your script:

---

# Wi-Fi Manager Script for Ubuntu-based Systems

## Overview

This script is designed to manage Wi-Fi settings on Ubuntu-based operating systems. It checks for the presence of a Wi-Fi card and, if available, disables airplane mode and enables the Wi-Fi connection. If no Wi-Fi card is detected, it provides a relevant message to the user.

## Features

- Checks if the system is running an Ubuntu-based OS.
- Detects the presence of a Wi-Fi card.
- Disables airplane mode if a Wi-Fi card is present.
- Enables Wi-Fi.
- Restarts the NetworkManager service to apply changes.

## Requirements

- An Ubuntu-based operating system (e.g., Ubuntu, Debian).
- `NetworkManager` installed and running.
- Superuser privileges to execute the script.

## Usage

1. **Clone or Download the Script**

   Save the script to your local machine. You can name it `wifi_manager.sh` or any name you prefer.

2. **Make the Script Executable**

   Open a terminal and navigate to the directory where the script is located. Run the following command to make the script executable:

   ```bash
   chmod +x wifi_manager.sh
   ```

3. **Run the Script**

   Execute the script with superuser privileges:

   ```bash
   sudo ./wifi_manager.sh
   or
   sudo bash wifi_manager
   
   ```

4. **Output Messages**

   - If a Wi-Fi card is found, you will see messages indicating that airplane mode has been disabled and Wi-Fi has been enabled.
   - If no Wi-Fi card is found, the script will inform you with a message: "No Wi-Fi card found in the system."
   - If the system is not Ubuntu-based, a message will indicate that the script is only designed for Ubuntu-based systems.

## Example

```bash
$ sudo ./wifi_manager.sh
Airplane mode disabled
Wi-Fi enabled
```

## License

Feel free to modify and use it as per your requirements.

