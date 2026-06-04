# BEGIN 

# Installation Script for Minimal Debian Install (i3+picom)
# 1. install after installation of sudo command
# ... add the user to group sudo and login with ordinary sudo user
# 2. uncomment or comment-out if you don't want a specific package 
# sudo apt install -y #

# -- update package list and upgrade 
sudo apt update && sudo apt upgrade

# -- internet 
sudo apt install -y network-manager net-tools # command-line network interface 
# sudo apt install -y nethogs # internet terminal application watcher 

# -- firmware 
sudo apt install -y firmware-linux firmware-linux-nonfree firmware-misc-nonfree # firmware, drivers 
# sudo apt install -y linux-headers-$(uname -r) nvidia-detect # if you have nvidia graphic-card 

# -- graphical server and window manager 
sudo apt install -y xorg dbus-x11 # x11 graphical server 
sudo apt install -y i3 picom # i3 window manager and picom compositor 
# sudo apt install -y lightdm lightdm-gtk-greeter # graphical login 

# -- build/compilation toolchain/toolkits 
sudo apt install -y build-essential # install GCC + make
# sudo apt install -y libx11-dev libxkbcommon-dev libxkbcommon-x11-dev # x11 dev tools 
sudo apt install -y libgtk-3-0 libgtk-4-1 # gtk toolkit for gtk graphical interface apps 

# -- sound
sudo apt install -y pipewire pipewire-pulse pipewire-alsa pipewire-jack # sound related apps 
sudo apt install -y wireplumber # sound server 

# -- apps 
sudo apt install -y thunar # gtk file explorer
sudo apt install -y lxpolkit # gtk daemon for sudo privilege scalation
# sudo apt install -y polkitd # daemon for sudo privilege scalation
sudo apt install -y lxappearance # gtk appearance
sudo apt install -y lxrandr # gtk to set display monitors
# sudo apt install -y arandr # gtk to set display monitors (legacy)
sudo apt install -y 7zip # file extract/compression tool 
sudo apt install -y firefox-esr # firefox browser 
# sudo apt install -y falkon # lightweight browser
# sudo apt install -y surf # lightweight i3 style browser 
# sudo apt install -y qutebrowser # lightweight vim style browser 
sudo apt install -y curl wget git # tools to get things on internet 
sudo apt install -y htop # taskmanager 
# sudo apt install -y btop # better taskmanager
sudo apt install -y pavucontrol alsa-utils # guis for sound configs 
sudo apt install -y feh scrot imagemagick # screenshot and background tools 
# sudo apt install -y nitrogen # background settings gui 
# sudo apt install -y geany # light text/code editor
# sudo apt install -y gnome-calendar # calendar 
# sudo apt install -y obs-studio # video capture and video stream
# sudo apt install -y wine wine64 winetricks # wine windows application layer
# sudo apt install -y wine32:i386 # legacy systems wine layer
# sudo apt install -y evince # light gnome-based pdf viewer 
# sudo apt install -y transmission # lightweight torrent client
# sudo apt install -y qbittorrent # torrent client of qbittorrent 

# -- gtk themes 
# sudo apt install -y adwaita-icon-theme # icon theme 
# sudo apt install -y hicolor-icon-theme # icon theme 
# sudo apt install -y papirus-icon-theme # icon theme 
# sudo apt install -y gnome-themes-extra # theme 

# -- system utilities
# sudo apt install -y gparted # partition tool
# sudo apt install -y bleachbit # ccleaner equivalent, tool to cleandisk 
# sudo apt install -y xbacklight # screen brightness 
sudo apt install -y brightnessctl # screen brightness
# sudo apt install -y dunst # notification daemon 
# sudo apt install -y ufw # uncomplicated firewall 

# -- fonts 
sudo apt install -y fonts-dejavu-core fonts-freefont-ttf fonts-liberation \
                 fonts-noto-core fonts-noto-extra fonts-noto-color-emoji \
                 fonts-noto-cjk fonts-wqy-zenhei fonts-wqy-microhei \
                 fonts-mathjax fonts-courier fonts-roboto fonts-open-sans \
                 fonts-aenigma \
                 fonts-cantarell \
                 fonts-crosextra-caladea fonts-crosextra-carlito \
                 fonts-font-awesome \
                 fonts-symbola fonts-unifont \
                 fonts-lato fonts-msttcore
fc-cache -fv

# END
















