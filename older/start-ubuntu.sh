#!/bin/bash

PPA_LIBRATBAG="ppa:libratbag-piper/piper-libratbag-git"
PPA_LUTRIS="ppa:lutris-team/lutris"
PPA_GRAPHICS_DRIVERS="ppa:graphics-drivers/ppa"
PPA_GIT="ppa:git-core/ppa"
PPA_ORACLE13_JDK="ppa:linuxuprising/java"

sudo apt-add-repository "$PPA_LIBRATBAG" -y
sudo add-apt-repository "$PPA_LUTRIS" -y
sudo apt-add-repository "$PPA_GRAPHICS_DRIVERS" -y
sudo apt-add-repository "$PPA_GIT" -y
sudo apt-add-repository "$PPA_ORACLE13_JDK" -y

PROGRAMAS_PARA_INSTALAR=(
  snapd 
  virtualbox
  git
  p7zip-full
  curl
  python3
  python-pip
  python3-distutils-extra
  vlc
  firefox
  gimp
  ubuntu-restricted-extras
  flatpak
  gnome-software-plugin-flatpak
  synaptic
  oracle-java13-set-default
  openjdk-8-jdk
  )

sudo apt update -y && sudo apt upgrade -y

# Instalar programas no apt
for nome_do_programa in ${PROGRAMAS_PARA_INSTALAR[@]}; do
    sudo apt install "$nome_do_programa" -y
done


if ! dpkg -l | grep -q google-chrome-stable; then # Só instala se já não estiver instalado
    echo "Downloading Chrome"
    if [ $(uname -i) = 'i386' ]; then
        wget --quiet https://dl.google.com/linux/direct/google-chrome-stable_current_i386.deb
    elif [ $(uname -i) = 'x86_64' ]; then
        wget --quiet https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    fi
    echo "Installing Chrome"
    sudo dpkg -i google-chrome*.deb
    rm google-chrome*.deb
else
    echo "google-chrome-stable ja instalado"
fi
sudo snap install spotify
sudo snap install slack --classic
sudo snap install skype --classic

## Finalização, atualização e limpeza##
sudo apt update && sudo apt dist-upgrade -y
flatpak update
sudo apt autoclean
sudo apt autoremove -y