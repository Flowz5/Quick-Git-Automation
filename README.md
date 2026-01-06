# Quick Git Automation Tool 🚀

Ce projet est un outil d'automatisation léger pour Linux conçu pour accélérer le workflow Git (add, commit, push) directement depuis le gestionnaire de fichiers.

## 📌 Présentation

L'outil se compose d'un script Bash et d'un fichier d'entrée de bureau (.desktop). Il permet de réaliser un cycle complet Git en quelques secondes via un clic droit dans un dossier :
1. **git add .**
2. **git commit -m "[Votre message]"** (via une fenêtre de saisie Zenity)
3. **git push**

## 🛠️ Fonctionnement technique

Le projet utilise deux fichiers principaux :
- [cite_start]**`quick_git_hypr.sh`** : Le script de logique qui vérifie l'état du dépôt, ouvre une fenêtre de saisie graphique avec `zenity` et exécute les commandes Git[cite: 1].
- [cite_start]**`quick_git.desktop`** : Définit l'action système pour intégrer le script au menu contextuel (clic droit) du gestionnaire de fichiers[cite: 2].

## 🚀 Installation

1. **Prérequis** : Assurez-vous d'avoir `git` et `zenity` installés sur votre système.
2. **Script** : Placez `quick_git_hypr.sh` dans un dossier de votre `$PATH` (par exemple `~/.local/bin/`) et rendez-le exécutable :
   ```bash
   chmod +x quick_git_hypr.sh
   ```
3. **Intégration** : Placez le fichier quick_git.desktop dans le dossier des services de votre gestionnaire de fichiers (ex: ~/.local/share/file-manager/actions/ ou selon votre configuration Hyprland/Dolphin).

## 💡 Pourquoi ce projet ?

Développé dans le cadre de mon BTS SIO SLAM, ce projet répond à un besoin de productivité personnelle. Il démontre ma capacité à :

- Automatiser des tâches répétitives en Bash.

- Interagir avec les outils système Linux.

- Améliorer l'expérience utilisateur (UX) via des interfaces graphiques simples
