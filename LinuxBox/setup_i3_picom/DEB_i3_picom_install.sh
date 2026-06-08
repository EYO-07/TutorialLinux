# BEGIN : Debian Linux i3+picom Setup 
# 1. use este script depois de ter instalado o comando sudo (não está incluso na instalação mínima).
# 2. comente (colocando # na frente) ou descomente os componentes que você quer ou não manter do script.
# ... comentários são ignorados pelo sistema.

# -- atualização do sistema pelo apt 
sudo apt update && sudo apt upgrade

# -- internet 
sudo apt install -y network-manager net-tools # comando nmcli 
# sudo apt install -y nethogs # visualiza conexão à internet por aplicações

# -- firmware 
sudo apt install -y firmware-linux firmware-linux-nonfree firmware-misc-nonfree # firmware, drivers 
# sudo apt install -y linux-headers-$(uname -r) nvidia-detect # if you have nvidia graphic-card 

# -- servidor gráfico e window manager
sudo apt install -y xorg dbus-x11 # x11 graphical server 
sudo apt install -y i3 picom # i3 window manager and picom compositor 
# sudo apt install -y lightdm lightdm-gtk-greeter # login gráfico

# -- ferramentas de compilação 
sudo apt install -y build-essential # gcc make
sudo apt install -y libx11-dev libxkbcommon-dev libxkbcommon-x11-dev # x11
sudo apt install -y libgtk-3-0 libgtk-4-1 # gtk 

# -- servidor de áudio 
sudo apt install -y pipewire pipewire-pulse pipewire-alsa pipewire-jack # pipewire
sudo apt install -y wireplumber # wireplumber 

# -- aplicativos 
# sudo apt install -y thunar # explorador de arquivos
# sudo apt install -y nnn # explorador de arquivos
sudo apt install -y lxpolkit # servidor de autenticação
# sudo apt install -y polkitd # servidor de autenticação
# sudo apt install -y lxappearance # configuração de aparência de aplicativos gtk
sudo apt install -y lxrandr # configuração de monitores por interface gtk
# sudo apt install -y arandr # configuração de monitores por interface gtk
# sudo apt install -y 7zip # compressão e extração de arquivos
sudo apt install -y firefox-esr # versão de suporte para firefox browser 
# sudo apt install -y falkon # browser leve
# sudo apt install -y surf # browser leve no estilo i3 
# sudo apt install -y qutebrowser # browser leve
sudo apt install -y curl wget git # ferramentas cli de internet 
# sudo apt install -y htop # gerenciador de processos de terminal
# sudo apt install -y btop # gerenciador de processos de terminal
sudo apt install -y pavucontrol alsa-utils # interfaces de configuração de áudio 
sudo apt install -y feh scrot imagemagick # screenshot e background 
# sudo apt install -y nitrogen # configuração de background 
# sudo apt install -y geany # editor de texto e código
# sudo apt install -y gnome-calendar # calendário em gtk 
# sudo apt install -y obs-studio # streaming e gravação de tela 
# sudo apt install -y wine wine64 winetricks # wine windows application layer
# sudo apt install -y wine32:i386 # legacy systems wine layer
# sudo apt install -y evince # visualizador leve de pdf 
# sudo apt install -y transmission # torrent
# sudo apt install -y qbittorrent # torrent

# -- temas gtk
# sudo apt install -y adwaita-icon-theme # icon theme 
# sudo apt install -y hicolor-icon-theme # icon theme 
# sudo apt install -y papirus-icon-theme # icon theme 
# sudo apt install -y gnome-themes-extra # theme 

# -- utilitários de sistema
# sudo apt install -y gparted # partition tool
# sudo apt install -y bleachbit # limpeza de disco 
# sudo apt install -y xbacklight # brilho de tela 
sudo apt install -y brightnessctl # brilho de tela
sudo apt install -y dunst # Notificações leves para i3
# sudo apt install -y ufw # firewall 

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
















