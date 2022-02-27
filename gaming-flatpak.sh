#!/bin/bash
# Gaming Flatpak
# Install various packages for Gaming using Flatpak to be distribution agnostic
#
#Copyright (C) 2022 Yannick Defais
#This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
#This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
#You should have received a copy of the GNU General Public License along with this program. If not, see https://www.gnu.org/licenses/. 
############################################################################################
# Initialize variables
GAMING_FLATPAK_VERSION=0.2

# Commands to install
FLATPAKS="# This is where you put the Flatpaks commands to install softwares and their descriptions in various langages:
# First start with the name (KEYWORD=name: REQUIRED),
# then the upstream URL (KEYWORD=url:, optional),
# then the descriptions (if any english is mandatory, REQUIRED) using ISO 639-1 codes (KEYWORD=2 letters + :) to select langage,
# then security (KEYWORD=security: REQUIRED),
# then dependencies (KEYWORD=dependencies:, if any, optionnal)
# then the command you wish to install (mandatory, start with KEYWORD=flatpak, REQUIRED, MUST BE LAST).
# The order do not really matter, except for the flatpak command which MUST BE LAST.
# You can comment using: #
####################################
##                                ##
##         Gaming Profile         ##
##         2022 - 02 - 25         ##
##                                ##
####################################
profile:gaming

####################################
# Set up working environment

# Add flathub repository
#fr:Ajout du dépôt Flathub.
#en:Adding Flathub repository.
#flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Add Flathub-beta repository
#fr:Ajout du dépôt Flathub-beta.
#en:Adding Flathub-beta repository.
#flatpak remote-add --if-not-exists --user flathub-beta https://flathub.org/beta-repo/flathub-beta.flatpakrepo

# Update Flatpaks repositories
#fr:Mise à jour des dépôts Flapak.
#en:Updating Flatpak repositories.
#flatpak update --assumeyes --noninteractive

####################################
# Softwares

# Steam 
name:Steam
url:https://flathub.org/apps/details/com.valvesoftware.Steam
fr:Lanceur pour le service Steam.
en:Launcher for the Steam service.
security:Potentiellement non fiable : code propriétaire
flatpak install --assumeyes --noninteractive flathub com.valvesoftware.Steam

# ProtonGE 
name:Proton-GE
url:https://github.com/flathub/com.valvesoftware.Steam.CompatibilityTool.Proton-GE
fr:Version personnalisée de Proton.
en:Custom build of Proton.
security:[✓]
flatpak install --assumeyes --noninteractive flathub com.valvesoftware.Steam.CompatibilityTool.Proton-GE

# ProtonUP-QT
name:ProtonUp-Qt
url:https://flathub.org/apps/details/net.davidotek.pupgui2
fr:Installe des outils basés sur Wine et Proton.
en:Install Wine- and Proton-based tools.
security:[✓]
flatpak install --assumeyes --noninteractive flathub net.davidotek.pupgui2

# Lutris dependencies
# org.freedesktop.Platform.GL32.default/x86_64/21.08 org.freedesktop.Platform.GL.default/x86_64/21.08 already installed at this point
#fr:Installation des dépendances pour Lutris.
#en:Lutris dependancies installation.
#flatpak install --user --assumeyes --noninteractive flathub org.gnome.Platform.Compat.i386/x86_64/41

# Lutris
name:Lutris
url:https://github.com/flathub/net.lutris.Lutris
fr:Plateforme pour les jeux.
en:Gaming platform.
security:Vient du dépôt flathub-beta.
dependencies:flatpak remote-add --if-not-exists --user flathub-beta https://flathub.org/beta-repo/flathub-beta.flatpakrepo
dependencies:flatpak update --assumeyes --noninteractive
dependencies:flatpak install --assumeyes --noninteractive flathub org.gnome.Platform/x86_64/41
dependencies:flatpak install --assumeyes --noninteractive flathub org.gnome.Platform.Compat.i386/x86_64/41
dependencies:flatpak install --assumeyes --noninteractive flathub org.freedesktop.Platform.GL32.default/x86_64/21.08
# already installed with flathub org.gnome.Platform/x86_64/41:
#dependencies:flatpak install --assumeyes --noninteractive flathub org.freedesktop.Platform.GL.default/x86_64/21.08
flatpak install --user --assumeyes --noninteractive flathub-beta net.lutris.Lutris//beta

# Flatseal
name:Flatseal
url:https://flathub.org/apps/details/com.github.tchx84.Flatseal
fr:Gère les permissions des Flatpaks.
en:Manage Flatpak permissions.
security:[✓]
flatpak install --assumeyes --noninteractive flathub com.github.tchx84.Flatseal

# Mangohud
name:Mangohud
url:https://github.com/flathub/org.freedesktop.Platform.VulkanLayer.MangoHud
fr:Overlay pour surveiller les IPS et plus encore.
en:Overlay for monitoring FPS and more.
security:[✓]
flatpak install --assumeyes --noninteractive flathub org.freedesktop.Platform.VulkanLayer.MangoHud

# Discord
name:Discord
url:https://flathub.org/apps/details/com.discordapp.Discord
fr:Client de messagerie, voix et vidéo.
en:Messaging, Voice, and Video Client.
security:Potentiellement non fiable : code propriétaire
flatpak install --assumeyes --noninteractive flathub com.discordapp.Discord

# OpenRGB
name:OpenRGB
url:https://flathub.org/apps/details/org.openrgb.OpenRGB
fr:Contrôle des lumières RGB.
en:RGB lighting control.
security:[✓]
flatpak install --assumeyes --noninteractive flathub org.openrgb.OpenRGB

# Spotify
name:Spotify
url:https://flathub.org/apps/details/com.spotify.Client
fr:Service de musique en ligne.
en:Online music streaming service.
security:Potentiellement non fiable : code propriétaire
flatpak install --assumeyes --noninteractive flathub com.spotify.Client

# OBS Studio
name:OBS Studio
url:https://github.com/flathub/com.obsproject.Studio
fr:Diffusion/enregistrement de vidéos.
en:Recording and streaming video content.
security:[✓]
flatpak install --assumeyes --noninteractive flathub com.obsproject.Studio

# Kdenlive
name:Kdenlive
url:https://flathub.org/apps/details/org.kde.kdenlive
fr:Éditeur vidéo non-linéaire.
en:Video Editor.
security:[✓]
flatpak install --assumeyes --noninteractive flathub org.kde.kdenlive

# GtkStressTesting
name:GtkStressTesting
url:https://flathub.org/apps/details/com.leinardi.gst
fr:Stresse divers composants matériels du PC.
en:Stress and monitor various hardware components.
security:[✓]
flatpak install --assumeyes --noninteractive flathub com.leinardi.gst"

GAMING_FLATPAK_GUI=none

TRUE=0
FALSE=1

declare -a COMMANDS_TO_INSTALL
declare -a LABELS_TO_COMMANDS
declare -a UPSTREAM_URLS
declare -a SOFTWARE_NAME
declare -a SOFTWARE_SECURITY
declare -a SELECTED_SOFTWARES_TO_INSTALL
declare -a DEPENDENCIES_FLATPAK
declare -a CHOICES

# set the password variable to empty
PASSWRD=""

ERROR_IN_SELECTOR=" "
################################################################################################
# functions:
err_report()
{
echo "Warning: Error on line $1. Do not worry, we're dealing with it:"
}

trap 'err_report $LINENO' ERR

# Catastrophic error and terminate
gf_die()
{
echo "$@"
exit 1
}

Gaming-Flatpak_usage()
{
  case ${LANG} in
    fr*)
      cat <<_EOF_
Utilisation : $0 [options]
Installe des paquets Flatpak pour le jeu

Options :
  --gui    Force l'utilisation de fenêtres graphiques  (défaut=zenity)
  --gui=VAR  Choisissez 'zenity' ou 'kdialog' pour vos fenêtres
  --nogui    Installation en mode texte
  -h, --help  Écrit cette aide
  -v, --version  Écrit la version et sort
_EOF_
    ;;
    *)
      cat <<_EOF_
Usage : $0 [options]
Install Flatpak packages for gaming

Options :
  --gui    Force GUI  (default=zenity)
  --gui=VAR  Choose 'zenity' or 'kdialog' for the GUI
  --nogui    Text installation
  -h, --help  Display this help
  -v, --version  Display version and exit
_EOF_
    ;;
  esac
}

Parse_config()
{
# Flatpak counter
i=0
DEFAULT_LABELS_TO_COMMANDS=""
while IFS= read -r line
do
  # Does this line do not start with a # and is not empty/spaces only
  if [[ ! "$line" == "#"* && ! -z "${line// }" ]]; then
    case $line in
      name:*)
        # Software name
        SOFTWARE_NAME[$i]=${line/name:/}
        ;;
      url:*)
        # url
        UPSTREAM_URLS[$i]=${line/url:/}
        ;;
      [[:alpha:]][[:alpha:]]:*)
        # langage description
        LANG_CONFIG="${line:0:2}"
        LANG_SYSTEM="${LANG:0:2}"
        if [[ "${LANG_SYSTEM}" == "${LANG_CONFIG}" ]]; then
          LABELS_TO_COMMANDS[$i]=${line:3}
        elif [[ "en" == "${LANG_CONFIG}" ]]; then
          DEFAULT_LABELS_TO_COMMANDS=${line:3}
        fi
        ;;
      security:*)
        # Security
        SOFTWARE_SECURITY[$i]=${line/security:/}
        ;;
      dependencies:*)
        # This is weird, but this flatpak needs installation of dependencies first! (like Lutris in flathub-beta)
        # We append all dependencies here, using "|" as a separator (and there will be an extra | at the end)
        DEPENDENCIES_FLATPAK[$i]+="${line/dependencies:/}|"
        #echo "#$i#${DEPENDENCIES_FLATPAK[$i]}"
        ;;
      flatpak*)
        # Flatpak command
        if [[ -z "${UPSTREAM_URLS[$i]}" ]]; then
          # No url found
          UPSTREAM_URLS[$i]=""
        fi
        # dependencies: if any, we delete the last character which is an extra | (separator)
        if [[ ! -z "${DEPENDENCIES_FLATPAK[$i]}" ]]; then
          DEPENDENCIES_FLATPAK[$i]=${DEPENDENCIES_FLATPAK[$i]::-1}
          #echo "*$i*${DEPENDENCIES_FLATPAK[$i]}"
        fi
        # The command to install
        COMMANDS_TO_INSTALL[$i]=${line}
        if [[ -z "${LABELS_TO_COMMANDS[$i]}" && ! -z "${DEFAULT_LABELS_TO_COMMANDS}" ]]; then
          # We do not have a description in mother tongue, set to english
          LABELS_TO_COMMANDS[$i]="${DEFAULT_LABELS_TO_COMMANDS}"
        fi
        # For debuging purpose:
        #echo "${i}"
        #echo "NAME=${SOFTWARE_NAME[$i]}"
        #echo "URL=${UPSTREAM_URLS[$i]}"
        #echo "DESCR=${LABELS_TO_COMMANDS[$i]}"
        #echo "SECU=${SOFTWARE_SECURITY[$i]}"
        #echo "COMM=${COMMANDS_TO_INSTALL[$i]}"
        
        # Reset the default description in english
        DEFAULT_LABELS_TO_COMMANDS=""
        ((i++))
        LABELS_TO_COMMANDS[$i]=""
        ;;
      *)
      # Is there something else? Like profile definition...
      ;;
    esac
    #i++
  fi
done < <(printf '%s\n' "$FLATPAKS")
}

Cli_selector()
{
echo "Choisissez les flatpaks à installer (par défaut, ils sont tous sélectionnés) :"
for (( i = 0; i < ${#COMMANDS_TO_INSTALL[@]}; i++ ))
do
  echo "[${CHOICES[$i]:-✓}]" $(($i+1))") ${SOFTWARE_NAME[$i]} : ${LABELS_TO_COMMANDS[$i]} | Sécurité : ${SOFTWARE_SECURITY[$i]}"
done
echo "$ERROR_IN_SELECTOR"
}

Select_flatpaks_to_install()
{
case ${GAMING_FLATPAK_GUI} in
  zenity)
    for (( i = 0; i < ${#COMMANDS_TO_INSTALL[@]}; i++ ))
    do
      B+="TRUE \"${SOFTWARE_NAME[$i]}\" \"${LABELS_TO_COMMANDS[$i]}\" \"${SOFTWARE_SECURITY[$i]}\" "   
    done
    #echo "**$B**"
    ZENITY_LIST=$(eval zenity --list \
    --title="Choisissez\ les\ flatpaks\ à\ installer"\
    --width 860\
    --height 440\
    --checklist \
    --column "Sélection" \
    --column "Nom" \
    --column "Description" \
    --column "Sécurité" \
    "$B")
    if [ -z "$ZENITY_LIST" ]; then
      echo "Fatal error: Nothing to install"
      echo "Exiting"
      exit 1
    fi
    #echo "$ZENITY_LIST"
    j=0
    k=0
    while IFS='|' read -ra NAMES; do
      for i in "${NAMES[@]}"; do
        while [ ! "$i" = "${SOFTWARE_NAME[$j]}" ]
        do
          ((j++))
        done
        # We now have reach the selected command !
        SELECTED_SOFTWARES_TO_INSTALL[$k]="$j"
        ((k++))
      done
    done <<< "$ZENITY_LIST"

    #for (( i = 0; i < ${#SELECTED_SOFTWARES_TO_INSTALL[@]}; i++ ))
    #do
    #  k="${SELECTED_SOFTWARES_TO_INSTALL[$i]}"
    #  echo "*${SELECTED_SOFTWARES_TO_INSTALL[$i]} ${SOFTWARE_NAME[$k]}"
    #done

  ;;
  kdialog)
    for (( i = 0; i < ${#COMMANDS_TO_INSTALL[@]}; i++ ))
    do
      B+="$i \"${SOFTWARE_NAME[$i]} : ${LABELS_TO_COMMANDS[$i]} | Sécurité : ${SOFTWARE_SECURITY[$i]}\" on "   
    done
    KDIALOG_LIST=$(eval kdialog --separate-output \
    --checklist "Choisissez\ les\ flatpaks\ à\ installer" \
    "$B" --geometry 860x440 )
    if [ -z "$KDIALOG_LIST" ]; then
      echo "Fatal error: Nothing to install"
      echo "Exiting"
      exit 1
    fi
    SAVEIFS=$IFS   # Save current IFS (Internal Field Separator)
    IFS=$'\n'
    SELECTED_SOFTWARES_TO_INSTALL=($KDIALOG_LIST)
    IFS=$SAVEIFS   # Restore original IFS
    #for (( i = 0; i < ${#SELECTED_SOFTWARES_TO_INSTALL[@]}; i++ ))
    #do
    #  echo "*${SELECTED_SOFTWARES_TO_INSTALL[$i]}"
    #done
  ;;
  none)
  clear
  while Cli_selector && read -rp "Sélectionnez les paquets avec leur numéro, [Entrée] pour valider : " NUM && [[ "$NUM" ]]; do
    clear
      if [[ "$NUM" == *[[:digit:]]* && $NUM -ge 1 && $NUM -le ${#COMMANDS_TO_INSTALL[@]} ]]; then
          ((NUM--))
          if [[ "${CHOICES[$NUM]}" == " " ]]; then
              CHOICES[NUM]="✓"
          else
              CHOICES[NUM]=" "
          fi
              ERROR_IN_SELECTOR=" "
      else
          ERROR_IN_SELECTOR="Choix invalide : $NUM"
      fi
  done
  # Choice has been made by the user, now we need to populate SELECTED_SOFTWARES_TO_INSTALL
  j=0
  for (( i = 0; i < ${#COMMANDS_TO_INSTALL[@]}; i++ ))
  do
    if [[ ! "${CHOICES[$i]}" == " " ]]; then
      SELECTED_SOFTWARES_TO_INSTALL[$j]="$i"
      ((j++))
    fi
  done
  #for (( i = 0; i < ${#SELECTED_SOFTWARES_TO_INSTALL[@]}; i++ ))
  #do
  #  k="${SELECTED_SOFTWARES_TO_INSTALL[$i]}"
  #  echo "*${SELECTED_SOFTWARES_TO_INSTALL[$i]} ${SOFTWARE_NAME[$k]}"
  #done
  ;;
esac
}

Gaming-Flatpak_detect_gui()
{
  if [ -n "$1" ]; then
    if [ "$1" = "kdialog" ] && test -x "$(command -v kdialog 2>/dev/null)"; then
      GAMING_FLATPAK_GUI=kdialog
    elif [ "$1" = "kdialog" ] && ! test -x "$(command -v kdialog 2>/dev/null)"; then
      echo "Fatal Error: kdialog not found."
      echo "Please install kdialog."
      echo "--help for more options."
      exit 1  
    elif [ "$1" = "zenity" ] || [ "$1" = "--gui" ] && test -x "$(command -v zenity 2>/dev/null)"; then
      GAMING_FLATPAK_GUI=zenity
    elif [ "$1" = "zenity" ] || [ "$1" = "--gui" ] && ! test -x "$(command -v zenity 2>/dev/null)"; then
      echo "Fatal Error: zenity not found."
      echo "Please install zenity."
      echo "--help for more options."
      exit 1  
    else
      echo "Fatal Error: Invalid GUI option in --gui"
      echo "Valid options are 'zenity' or 'kdialog'"
      exit 1
    fi
  elif test -x "$(command -v zenity 2>/dev/null)"; then
    GAMING_FLATPAK_GUI=zenity
  elif test -x "$(command -v kdialog 2>/dev/null)"; then
    GAMING_FLATPAK_GUI=kdialog
  else
    echo "Fatal Error: We tried our best to start a GUI, but we failed."
    echo "Please install zenity or kdialog."
    echo "Or run with --nogui."
    exit 1
  fi
}    

Gaming-Flatpak_version()
{
  echo "Gaming Flatpak script ${GAMING_FLATPAK_VERSION}"
}

Gaming-Flatpak_options()
{
  case "$1" in
    --gui*) Gaming-Flatpak_detect_gui "${1##--gui=}";;
    --nogui) GAMING_FLATPAK_GUI=none;;
    -h|--help) Gaming-Flatpak_usage ; exit 0;;
    -v|--version) Gaming-Flatpak_version ; exit 0;;
    -*) gf_die "Fatal Error: unknown option $1";;
    *) return "${FALSE}" ;;
  esac
  return "${TRUE}"
}

Can_we_use_sudo()
if ( groups ${whoami} | grep sudo &>/dev/null ); then
  return "${TRUE}"
else
  return "${FALSE}"
fi

Deal_with_errors_on_installation()
{
if [[ "$ANY_ERROR" == *"Remotes found with refs similar to"* || "$ANY_ERROR" == *"Remote ‘flathub’ found in multiple installations:"* ]]; then
  # We need to explicitly tell it is for a system wide installation!
  COMMAND_TO_RUN="$*"
  COMMAND_TO_RUN=${COMMAND_TO_RUN/flatpak install/flatpak install --system}
  # Rerun the command
  echo "Previous attempt failed, installing: ${COMMAND_TO_RUN}." >> gaming-flatpack.log.txt
  ANY_ERROR=$(${COMMAND_TO_RUN} 2>&1)
  echo "$ANY_ERROR" >> gaming-flatpack.log.txt
fi  
  
if [[ "$ANY_ERROR" == *"error: Flatpak system operation Configure not allowed for user"* || "$ANY_ERROR" == *"Flatpak system operation Deploy not allowed for user"* ]]; then
  # We need sudo or su to perform this command!
  # Do we have the password yet ?
  if [ -z "$PASSWRD" ]; then
    case ${GAMING_FLATPAK_GUI} in
      zenity)
        if Can_we_use_sudo ; then
          PASSWRD=$(zenity --password --title="sudo")
        else
          PASSWRD=$(zenity --password --title="su, mot de passe root")
        fi
        ;;
      kdialog)
        if Can_we_use_sudo ; then
          PASSWRD=$(kdialog --title "sudo" --password "[sudo] Votre mot de passe : ")
        else
          PASSWRD=$(kdialog --title "su" --password "[su] Le mot de passe root : ")
        fi
        ;;
      none)
        if Can_we_use_sudo ; then
          read -sp "[sudo] Votre mot de passe : " PASSWRD
        else
          read -sp "[su] Le mot de passe root : " PASSWRD
        fi
        ;;
    esac  
  fi
  # Rerun the command with sudo or su
  # We are root, make sure we do not install for the root user only!
  COMMAND_TO_RUN="$*"
  COMMAND_TO_RUN=${COMMAND_TO_RUN/--user/--system}
  if Can_we_use_sudo ; then
    echo "Previous attempt failed, installing: ${COMMAND_TO_RUN} # using sudo." >> gaming-flatpack.log.txt
    # SECURITY ISSUE: we do not want the password in a log file!
    #echo "$PASSWRD" | sudo -S ${COMMAND_TO_RUN} >> gaming-flatpack.log.txt
    echo "$PASSWRD" | sudo -S ${COMMAND_TO_RUN}
    # Line return in the terminal
    echo " "
  else
    echo "Previous attempt failed, installing: ${COMMAND_TO_RUN} # using su." >> gaming-flatpack.log.txt
    # SECURITY ISSUE: we do not want the password in a log file!
    #{ sleep 3; echo "$PASSWRD"; } | script -q -c "su -c '${COMMAND_TO_RUN}'" >> gaming-flatpack.log.txt
    { sleep 3; echo "$PASSWRD"; } | script -q -c "su -c '${COMMAND_TO_RUN}'"
    # Line return in the terminal
    echo " "
  fi
fi
}

Install_using_flatpak()
{
echo "Trying to install: $*" >> gaming-flatpack.log.txt
ANY_ERROR=$($* 2>&1)
echo "$ANY_ERROR" >> gaming-flatpack.log.txt
Deal_with_errors_on_installation $*
}

Is_there_any_dependencies()
{
if [[ ! -z "${DEPENDENCIES_FLATPAK[$j]}" ]]; then
  l=""
  while IFS='|' read -ra NAMES; do
    for l in "${NAMES[@]}"; do
      echo "Installation de la dépendance de ${SOFTWARE_NAME[$j]}: $l" >> gaming-flatpack.log.txt
      Install_using_flatpak "${l}"
    done
  done <<< "${DEPENDENCIES_FLATPAK[$j]}"
fi  
}
###########################################################################################
# Script start here:

# What GUI do we use?
if ! Gaming-Flatpak_options "$1"; then
  # If there is no options, we want a GUI
  Gaming-Flatpak_detect_gui
fi

# EVIL:
#DISTRIB=awk '/^ID=/' /etc/*-release | awk -F'=' '{ print tolower($2) }'
#echo "Distribution: $DISTRIB" >> gaming-flatpack.log.txt
#if [[ $DISTRIB == *ubuntu* ]] ; then
#
#fi 

# Provide a list of Flatpaks to this script
Parse_config
TOTAL_COMMANDS=${#COMMANDS_TO_INSTALL[@]}

# Ask the user what does he want to install from this list of flatpaks.
Select_flatpaks_to_install

# For debugging purpose:
# exit 1

# Do we have the "flatpak" executable installed in this system?
# Make sure Flatpak is installed, if not open the web page to setup flatpak on the distribution
if ! test -x "$(command -v flatpak 2>/dev/null)"; then
  xdg-open https://flatpak.org/setup/
  sleep 2
  case ${LANG} in
    fr*)
    PLEASE_INSTALL_FLATPAK="Avant de continuer, veuillez installer Flatpak en suivant les instructions du site web.\n https://flatpak.org/setup/"
    ;;
    *)
    PLEASE_INSTALL_FLATPAK="Before preceeding, please install fLatpak by following the instructions on the website.\n https://flatpak.org/setup/"
    ;;
  esac
  case ${GAMING_FLATPAK_GUI} in
    zenity)
      zenity --warning --text="${PLEASE_INSTALL_FLATPAK}"
      ;;
    kdialog)
      kdialog --sorry "${PLEASE_INSTALL_FLATPAK}"
      ;;
    none)
      echo "${PLEASE_INSTALL_FLATPAK}"
      ;;
  esac
fi

# we wait for the installation of flatpak to complete. 
if ! test -x "$(command -v flatpak 2>/dev/null)"; then
  while ! test -x "$(command -v flatpak 2>/dev/null)"
    do
    sleep 5
  done
  # Let's wait a bit more in case the system need some more time to finish the installation
  sleep 10
fi

# Set up working environment
echo "Set up working environment" >> gaming-flatpack.log.txt
echo "Adding Flathub repository." >> gaming-flatpack.log.txt
# Add fluthub repository
Install_using_flatpak "flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo"
echo "Update Flatpaks repositories." >> gaming-flatpack.log.txt
# Update flatpak
Install_using_flatpak "flatpak update --assumeyes --noninteractive"

# Installing the selected flatpaks
TOTAL_COMMANDS=${#SELECTED_SOFTWARES_TO_INSTALL[@]}
case ${GAMING_FLATPAK_GUI} in
  zenity)
(
k="${SELECTED_SOFTWARES_TO_INSTALL[0]}"
for (( i = 0; i < ${#SELECTED_SOFTWARES_TO_INSTALL[@]}; i++ ))
do
  # $j is the number of a selected software to install
  j="${SELECTED_SOFTWARES_TO_INSTALL[$i]}"
  PERCENT=$(($i*100/${TOTAL_COMMANDS}))
  echo "$PERCENT"
  echo "$PERCENT%" >> gaming-flatpack.log.txt
  echo "# Installation de ${SOFTWARE_NAME[$j]} : ${LABELS_TO_COMMANDS[$j]}"
  echo "# Installation de ${SOFTWARE_NAME[$j]} : ${LABELS_TO_COMMANDS[$j]}" >> gaming-flatpack.log.txt
  # Is there any dependencies?
  Is_there_any_dependencies
  Install_using_flatpak "${COMMANDS_TO_INSTALL[$j]}"
done
# We do not want to store the password any more than necessary!
unset PASSWRD
) |
zenity --progress \
  --title="Progression de l'installation de Gaming-Flatpak..." \
  --width 600\
  --height 100\
  --text="Installation de ${SOFTWARE_NAME[$k]} : ${LABELS_TO_COMMANDS[$k]}" \
  --percentage=0 \
  --auto-close \
  --auto-kill

(( $? != 0 )) && zenity --error --text="Erreur dans l'installation !"

zenity --info --width 250 --height 100 --text="Installation complète. SVP rebootez."
    ;;
    
  kdialog)
# Let's find out which name qdbus has on this system:
if test -x "$(command -v qdbus-qt5 2>/dev/null)"; then
  QDBUS_NAME="qdbus-qt5"
elif test -x "$(command -v qdbus 2>/dev/null)"; then
  QDBUS_NAME="qdbus"
else
  echo "Fatal error: qdbus is not installed."
  echo "We cannot use the GUI."
  echo "Please install qdbus, or use --nogui."
  exit 1
fi
dbusRef=`kdialog --title "Progression de l'installation de Gaming-Flatpak..." --progressbar "Installation..." $TOTAL_COMMANDS`
for (( i = 0; i < ${#SELECTED_SOFTWARES_TO_INSTALL[@]}; i++ ))
do
  j="${SELECTED_SOFTWARES_TO_INSTALL[$i]}"
  ${QDBUS_NAME} $dbusRef Set "" value $i
  ${QDBUS_NAME} $dbusRef setLabelText "Installation de ${SOFTWARE_NAME[$j]} : ${LABELS_TO_COMMANDS[$j]}"
  echo "$i" >> gaming-flatpack.log.txt
  echo "Installation de ${SOFTWARE_NAME[$j]} : ${LABELS_TO_COMMANDS[$j]}" >> gaming-flatpack.log.txt
  #echo "Installing: ${COMMANDS_TO_INSTALL[$j]}." >> gaming-flatpack.log.txt
  #sleep 5
  Is_there_any_dependencies
  Install_using_flatpak "${COMMANDS_TO_INSTALL[$j]}"
done
# We do not want to store the password any more than necessary!
unset PASSWRD
${QDBUS_NAME} $dbusRef close
kdialog --msgbox "Installation complète. SVP rebootez."
    ;;
    
  none)
for (( i = 0; i < ${#SELECTED_SOFTWARES_TO_INSTALL[@]}; i++ ))
do
  j="${SELECTED_SOFTWARES_TO_INSTALL[$i]}"
  PERCENT=$(($i*100/${TOTAL_COMMANDS}))
  echo "$PERCENT%"
  echo "$PERCENT%" >> gaming-flatpack.log.txt
  echo "Installation de ${SOFTWARE_NAME[$j]} : ${LABELS_TO_COMMANDS[$j]}"
  echo "Installation de ${SOFTWARE_NAME[$j]} : ${LABELS_TO_COMMANDS[$j]}" >> gaming-flatpack.log.txt
  echo "Installing ${COMMANDS_TO_INSTALL[$j]}." >> gaming-flatpack.log.txt
  Is_there_any_dependencies
  Install_using_flatpak "${COMMANDS_TO_INSTALL[$j]}"
done
# We do not want to store the password any more than necessary!
unset PASSWRD
echo "Installation complète. SVP rebootez."
    ;;
esac
