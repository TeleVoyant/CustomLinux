# [1] minimal linux ISO (18.04)
#URL: http://archive.ubuntu.com/ubuntu/dists/bionic/main/installer-amd64/current/images/netboot/mini.iso
#!/bin/bash

# Check if the script is run by the superuser (root)
if [ "$EUID" -ne 0 ]; then
  echo "This script must be run as root."
  exit 1
fi

# Your script logic here
echo -e "\nExecuting as root..."

# copying configurations
cp -ru "./bin/.config"* "$HOME/.config"

# Notify the user
echo -e "\nFiles copied from $SOURCE_DIR to $DEST_DIR."


# (2) very light desktop manager
sudo apt install -y lightdm

# (3) light yet highly customizable GUI session manager
sudo apt install -y openbox-gnome-session
# menu and configuration editor
sudo apt install -y obmenu obconf

# (4) terminal emulator
sudo apt install -y gnome-terminal
# text editor
sudo apt install -y gedit

# (5) taskbar and left docker
sudo apt install -y tint2
sudo apt install -y docky

# (6) desktop wallpapers
sudo apt install -y nitrogen
sudo apt install -y ubuntu-wallpapers

# (7) lightest file manager
sudo apt install -y pcmanfm
# lightest task manager
sudo apt install -y lxtask

# (8) browser
sudo apt install -y firefox

# (9) sound control and indicator
sudo apt install -y pavucontrol volti
