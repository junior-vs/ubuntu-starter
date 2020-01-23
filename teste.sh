#!/bin/bash

if ! dpkg -l | grep -q google-chrome-stable; then # Só instala se já não estiver instalado
    echo nao
  else
    echo sim
  fi