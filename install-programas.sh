#!/bin/bash


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
  )

sudo apt update -y && sudo apt upgrade -y

# Instalar programas no apt
for nome_do_programa in ${PROGRAMAS_PARA_INSTALAR[@]}; do
  if ! dpkg -s  $nome_do_programa; then # Só instala se já não estiver instalado
    echo "=== === INSTALANDO  $nome_do_programa"
    sudo apt install "$nome_do_programa" -y
  else
    echo "[INSTALADO] - $nome_do_programa"
  fi
done