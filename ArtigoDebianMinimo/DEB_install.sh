# BEGIN 

# Installation Script for Minimal Debian Install (i3+picom)
# ... install after installation of sudo command 
# ... comment-out if you don't want a specific package 
# -- update package list and upgrade 
sudo apt update && sudo apt upgrade
# -- internet 
sudo apt install network-manager # command-line network interface 
# -- firmware 
sudo apt install firmware-linux firmware-linux-nonfree firmware-misc-nonfree # firmware, drivers 
# sudo apt install linux-headers-$(uname -r) nvidia-detect # if you have nvidia graphic-card 
# -- graphical server and window manager 
sudo apt install xorg dbus-x11 # x11 graphical server 
sudo apt install i3 picom # i3 window manager and picom compositor 
# sudo apt install lightdm lightdm-gtk-greeter # graphical login 
# -- build/compilation toolchain 
sudo apt install build-essential # install GCC + make
sudo apt install libx11-dev libxkbcommon-dev libxkbcommon-x11-dev # x11 dev tools 
# -- sound
sudo apt install pipewire pipewire-pulse pipewire-alsa pipewire-jack # sound related apps 
sudo apt install wireplumber # sound server 
# -- apps 
sudo apt install libgtk-3-0 libgtk-4-1 # gtk toolkit for gtk graphical interface apps 
sudo apt install thunar lxpolkit lxappearance lxrandr arandr # some basic gtk apps 
sudo apt install 7zip # extract compression tool 
sudo apt install firefox-esr # firefox to install brave
sudo apt install curl wget git # tools to get things on internet 
sudo apt install htop # taskmanager 
sudo apt install pavucontrol alsa-utils # guis for sound configs 
# sudo apt install btop # better taskmanager
sudo apt install feh nitrogen scrot # screenshot and background tools 
# -- system utilities
sudo apt install gparted # partition tool
sudo apt install xbacklight # screen brightness 
# sudo apt install brightnessctl # screen brightness
# sudo apt install dunst # notification daemon 
# -- fonts 
sudo apt install fonts-dejavu-core fonts-freefont-ttf fonts-liberation \
                 fonts-noto-core fonts-noto-extra fonts-noto-color-emoji \
                 fonts-noto-cjk fonts-wqy-zenhei fonts-wqy-microhei \
                 fonts-mathjax fonts-courier fonts-roboto fonts-open-sans \
                 fonts-lato fonts-msttcore
fc-cache -fv

# END