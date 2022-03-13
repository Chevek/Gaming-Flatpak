# Gaming-Flatpak
Easy installation of gaming tools using Flatpak.

`fr:` Installation facile d'outils pour le jeu grâce à Flatpak.

## Flatpak for gaming [ALPHA] / Flatpak pour le jeu [ALPHA]
A set of gaming tools easily installable on as many distributions as possible using Flatpak.

`fr:` Un ensemble d'outils pour le jeu facilement installables sur le plus de distributions possibles grâce à Flatpak.

## You need / Vous avez besoin de :

[Flatpak](https://flatpak.org/setup/)

## Installation
Grab the latest release ".tar.gz" from the right panel and decompress it.
Either double-click the script "gaming-flatpak.sh" directly, or open a terminal in the script's folder and from there :

`$ ./gaming-flatpak.sh`

`fr:` Prenez le dernier ".tar.gz" dans la section "Release" à droite et décompressez le fichier.
Soit vous double-clickez directement sur le script "gaming-flatpak.sh", soit vous ouvrez un terminal dans le dossier où se trouve le script et de là vous tapez :

`$ ./gaming-flatpak.sh`

## Features / Fonctionnalités
* Install flatpaks, using a special selection for gaming on GNU/Linux.
* `fr:` Installe les flatpaks, avec une sélection taillée pour le jeu sur GNU/Linux.
* Support as much distributions as possible, if it can install flatpak.
* `fr:` supporte la plus part des distributions ; tant qu'elles peuvent installer flatpak.
* Interface for Gnome (Zenity), KDE (Kdialog) and Command line (Bash).
* `fr:` Interface pour Gnome (Zenity), KDE (Kdialog) et la ligne de commande (Bash).
![Gnome](img/gf-zenity-0.6.png)
![KDE](img/gf-kdialog-0-4.png)
![Cli](img/gf-cli-en-0.4.png)

* Multi language support (currently French and mostly English)
* `fr:` Support multi-langues (français et plus ou moins l'anglais)

## Options
```
$ ./gaming-flatpak.sh -h
Usage : ./gaming-flatpak.sh [options]
Install Flatpak packages for gaming

Options :
  --gui    Force GUI  (default=zenity)
  --gui=VAR  Choose 'zenity' or 'kdialog' for the GUI
  --nogui    Text installation
  -h, --help  Display this help
  -v, --version  Display version and exit
```

`fr:`
```
$ ./gaming-flatpak.sh -h
Utilisation : ./gaming-flatpak.sh [options]
Installe des paquets Flatpak pour le jeu

Options :
  --gui    Force l'utilisation de fenêtres graphiques  (défaut=zenity)
  --gui=VAR  Choisissez 'zenity' ou 'kdialog' pour vos fenêtres
  --nogui    Installation en mode texte
  -h, --help  Écrit cette aide
  -v, --version  Écrit la version et sort
```

## Flatpak Sources:
- Steam: https://flathub.org/apps/details/com.valvesoftware.Steam
- Lutris: https://github.com/flathub/net.lutris.Lutris
- HeroicGamesLauncher: https://flathub.org/apps/details/com.heroicgameslauncher.hgl
- Proton-GE: https://github.com/flathub/com.valvesoftware.Steam.CompatibilityTool.Proton-GE
- ProtonUp-Qt: https://flathub.org/apps/details/net.davidotek.pupgui2
- Athenaeum: https://flathub.org/apps/details/com.gitlab.librebob.Athenaeum
- RPCS3: https://flathub.org/apps/details/net.rpcs3.RPCS3
- Yuzu: https://flathub.org/apps/details/org.yuzu_emu.yuzu
- xemu: https://flathub.org/apps/details/app.xemu.xemu
- GNOME Games: https://flathub.org/apps/details/org.gnome.Games
- RetroArch: https://flathub.org/apps/details/org.libretro.RetroArch
- DOSBox Staging: https://flathub.org/apps/details/io.github.dosbox-staging
- Minecraft: https://flathub.org/apps/details/com.mojang.Minecraft
- Fightcade: https://flathub.org/apps/details/com.fightcade.Fightcade
- Flatseal: https://flathub.org/apps/details/com.github.tchx84.Flatseal
- Mangohud: https://github.com/flathub/org.freedesktop.Platform.VulkanLayer.MangoHud
- Discord: https://flathub.org/apps/details/com.discordapp.Discord
- TeamSpeak: https://flathub.org/apps/details/com.teamspeak.TeamSpeak
- AntiMicroX: https://flathub.org/apps/details/io.github.antimicrox.antimicrox
- OpenRGB: https://flathub.org/apps/details/org.openrgb.OpenRGB
- Coolero: https://flathub.org/apps/details/org.coolero.Coolero
- Spotify: https://flathub.org/apps/details/com.spotify.Client
- OBS Studio: https://github.com/flathub/com.obsproject.Studio
- Kdenlive: https://flathub.org/apps/details/org.kde.kdenlive
- GtkStressTesting: https://flathub.org/apps/details/com.leinardi.gst
- GNOME Boxes: https://flathub.org/apps/details/org.gnome.Boxes
