#!/bin/zsh

# This will deploy the KDE configuration.

unalias cp

cp -f kdeglobals.ini ~/.config/kdeglobals
cp -f shortcuts.ini ~/.config/kglobalshortcutsrc
cp -f lockscreen.ini ~/.config/kscreenlockerrc
cp -f keyboard.ini ~/.config/kxkbrc

cp -f konsole.ini ~/.config/konsolerc
cp -f konsole-profile.ini ~/.local/share/konsole/Profile1.profile
cp -f kwrite.ini ~/.config/kwriterc

cp -f thunderbird.js ~/.thunderbird/*default-default/user.js

# The settings in dolphin-sidebar assume that ~ = /home/samuel.
cp -f dolphin.ini ~/.config/dolphinrc
cp -f dolphin-view.ini ~/.local/share/dolphin/view_properties/global/.directory
cp -f dolphin-sidebar.xbel ~/.local/share/user-places.xbel
cp -f dolphin-toolbar.rc ~/.local/share/kxmlgui5/dolphin/dolphinui.rc


# Default apps
xdg-mime default okularApplication_pdf.desktop application/pdf
xdg-mime default org.kde.kwrite.desktop text/markdown
xdg-mime default org.kde.kwrite.desktop text/plain
xdg-mime default gvim.desktop text/x-tex
xdg-mime default gvim.desktop text/x-python
xdg-mime default gvim.desktop text/x-csrc
xdg-mime default gvim.desktop text/x-chdr
xdg-mime default gvim.desktop text/x-rust
xdg-mime default firefox-esr.desktop text/html
xdg-mime default thunderbird.desktop x-scheme-handler/mailto
