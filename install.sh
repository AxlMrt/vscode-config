#!/bin/bash

if ! command -v yay &>/dev/null; then
	echo "yay n'est pas installé. Installation en cours..."
	sudo pacman -S --needed git base-devel
	git clone https://aur.archlinux.org/yay.git
	cd yay
	makepkg -si
	cd ..
	rm -rf yay
fi

echo "Installation de Visual Studio Code..."
yay -S --noconfirm visual-studio-code-bin

extensions_dir="$HOME/.vscode/extensions"

if [ -f "extensions.txt" ]; then
	echo "Installation des extensions depuis extensions.txt..."
	cat extensions.txt | xargs -L 1 yay -S --noconfirm
else
	echo "Le fichier extensions.txt n'existe pas. Assurez-vous de l'avoir créé avec la liste des extensions à installer."
fi

settings_file="$HOME/.config/Code/User/settings.json"
if [ -f "settings.json" ]; then
	echo "Copie de settings.json dans $settings_file"
	cp settings.json "$settings_file"
else
	echo "Le fichier settings.json n'existe pas. Assurez-vous de l'avoir créé avec votre configuration VSCode."
fi
