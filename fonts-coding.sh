#!/usr/bin/env bash

fonts_dir="${HOME}/.local/share/fonts"
if [ ! -d "${fonts_dir}" ]; then
    echo "mkdir -p $fonts_dir"
    mkdir -p "${fonts_dir}"
else
    echo "Found fonts dir $fonts_dir"
fi

for type in Bold Light Medium Regular Retina; do
    file_path="${HOME}/.local/share/fonts/FiraCode-${type}.ttf"
    file_url="https://github.com/tonsky/FiraCode/blob/master/distr/ttf/FiraCode-${type}.ttf?raw=true"
    if [ ! -e "${file_path}" ]; then
        echo "wget -O $file_path $file_url"
        wget -O "${file_path}" "${file_url}"
    else
	echo "Found existing file $file_path"
    fi;
done


for type in "" Mono MonoPL PL ; do
    file_path="${HOME}/.local/share/fonts/Cascadia${type}.ttf"
    file_url="https://github.com/microsoft/cascadia-code/releases/download/v1911.21/Cascadia${type}.ttf?raw=true"
    if [ ! -e "${file_path}" ]; then
        echo "wget -O $file_path $file_url"
        wget -O "${file_path}" "${file_url}"
    else
	echo "Found existing file $file_path"
    fi;
done

wget  https://download.jetbrains.com/fonts/JetBrainsMono-1.0.3.zip -P /tmp
unzip /tmp/JetBrainsMono-1.0.3.zip -d /tmp 
cp /tmp/JetBrainsMono-1.0.3/ttf/JetBrainsMono-*.ttf fonts_dir

echo "fc-cache -f"
fc-cache -f