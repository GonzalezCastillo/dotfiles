#!/bin/zsh

# This will deploy the KDE configuration.

unalias cp

cp -f kdeglobals.ini ~/.config/kdeglobals

cp -f konsole.ini ~/.config/konsolerc
cp -f konsole-profile.ini ~/.local/share/konsole/Profile1.profile

cp -f shortcuts.ini ~/.config/kglobalshortcutsrc

cp -f thunderbird.js ~/.thunderbird/*default-default/user.js

# The settings in dolphin-sidebar assume that ~ = /home/samuel.
cp -f dolphin.ini ~/.config/dolphinrc
cp -f dolphin-view.ini ~/.local/share/dolphin/view_properties/global/.directory
cp -f dolphin-sidebar.xbel ~/.local/share/user-places.xbel
cp -f dolphin-toolbar.rc ~/.local/share/kxmlgui5/dolphin/dolphinui.rc

