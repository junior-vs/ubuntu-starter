#!/bin/bash

sudo add-apt-repository ppa:git-core/ppa 
sudo apt update

PROGRAMAS_PARA_INSTALAR=(
  git
  p7zip-full
  curl
  python3.8
  gnome-tweaks
  gnome-shell-extensions
  dconf-editor
  ubuntu-restricted-extras
  flatpak
  steam-installer
  wget 
  unzip
  virtualbox
  vagrant
  gedit
  postgresql-client
  )

sudo apt update -y && sudo apt upgrade -y

# Instalar programas no apt
for nome_do_programa in ${PROGRAMAS_PARA_INSTALAR[@]}; do
    sudo apt install "$nome_do_programa" -y
done

PROGRAMAS_PARA_INSTALAR=(
  spotify
  )

sudo apt update -y && sudo apt upgrade -y

# Instalar programas no apt
for nome_do_programa in ${PROGRAMAS_PARA_INSTALAR[@]}; do
    sudo snap install "$nome_do_programa"
done

sudo snap install  pycharm-community --classic
sudo snap install  intellij-idea-community --classic
sudo snap install  code --classic
sudo snap install  skype --classic
  
## Finalização, atualização e limpeza##
sudo apt update && sudo apt dist-upgrade -y
flatpak update
sudo apt autoclean
sudo apt autoremove -y
