#!/bin/bash

INFO="<big><b>Welcome to Astroberry Server!</b></big>\n
You are only one step from using Astrobery Server.\n
Review your system configuration and make necessary changes. Make sure to choose your localisation.\n
If you skip this step you can run it anytime from <b>Menu / Preferences / Raspberry Pi Configuration</b>\n
Project home page is located at <a href=''>www.astroberry.io</a>"

if [ -n "$(grep '^astroberry-init.sh' /etc/xdg/lxsession/LXDE-astroberry/autostart)" ]
then
    zenity --title "Astroberry Server" --width=400 --height=300 --info --text="$INFO" --icon-name="start-here"
    SUDO_ASKPASS="$(zenity --password --title 'Password Required')"
    if [ -n "$SUDO_ASKPASS" ]
    then
        sudo -AE rc_gui
        sudo -AE sed -i "s/^astroberry-init.sh/#astroberry-init.sh/g" /etc/xdg/lxsession/LXDE-astroberry/autostart
    fi
fi
