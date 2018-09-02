#!/bin/bash
# Create variables for icons and applications directories.
ICONS_DIR=${HOME}/.local/share/icons
APPS_DIR=${HOME}/.local/share/applications

mkdir -p ${ICONS_DIR}
mkdir -p ${APPS_DIR}

echo "Installing the course command shell shortcut..."
# Download the course icon to icons folder.
wget -q "https://raw.githubusercontent.com/rosin-project/mooc_hrwros_unity_launcher/master/hrwros-mooc-icon.jpg" -O  ${ICONS_DIR}/hrwros-mooc-icon.jpg
wget -q "https://raw.githubusercontent.com/rosin-project/mooc_hrwros_unity_launcher/master/start-hrwros.desktop" -O  ${APPS_DIR}/start-hrwros.desktop
wget -q "https://raw.githubusercontent.com/rosin-project/mooc_hrwros_unity_launcher/master/start-hrwros-nvidia.desktop" -O  ${APPS_DIR}/start-hrwros-nvidia.desktop

# ugly, but will have to do for now
sed -i "s|hrwros-mooc-icon.jpg|${HOME}/.local/share/icons/hrwros-mooc-icon.jpg|g" ${APPS_DIR}/start-hrwros.desktop
sed -i "s|hrwros-mooc-icon.jpg|${HOME}/.local/share/icons/hrwros-mooc-icon.jpg|g" ${APPS_DIR}/start-hrwros-nvidia.desktop

echo "Course command shell shortcut installed successfully"
echo "To get started:"
echo "1. Click on the Unity symbol on the top left corner of your screen"
echo "2. Type HRWROS"
echo "3. Click on the Shortcut 'HRWROS MOOC Environment' or 'HRWROS MOOC Environment (NVIDIA)' depending on your computer configuration"
