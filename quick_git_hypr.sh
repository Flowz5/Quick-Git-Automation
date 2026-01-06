#!/bin/bash

# Si Dolphin envoie un chemin (argument $1), on s'y déplace.
# Sinon, on reste là où on est.
if [ -n "$1" ]; then
    cd "$1" || exit
fi

# 1. Vérification Git
if [ ! -d ".git" ]; then
    zenity --error --text="Ce dossier n'est pas un dépôt Git !" --width=300
    exit 1
fi

# 2. Demande du message (Zenity s'ouvrira en flottant grâce à ta config Hyprland)
MESSAGE=$(zenity --entry --title="Quick Git" --text="Message du commit pour : $(basename "$PWD")" --width=400)

if [ -z "$MESSAGE" ]; then exit 1; fi

# 3. Git Push
OUTPUT=$(git add --all && git commit -m "$MESSAGE" && git push 2>&1)

if [ $? -eq 0 ]; then
    zenity --info --text="✅ Push réussi !" --width=300
else
    zenity --error --text="❌ Erreur :\n\n$OUTPUT" --width=500
fi
