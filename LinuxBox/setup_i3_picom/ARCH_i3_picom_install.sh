# BEGIN: Arch Linux i3+picom Setup
# 1. use este script depois da instalação mínima do arch.
# 2. comente (colocando # na frente) ou descomente os componentes que você quer ou não manter do script.
# ... comentários são ignorados pelo sistema.

# -- atualização do sistema pelo pacman 
# ... no arch é crucial atualizar a lista e os pacotes antes de instalar novos itens.
# ... como o arch funciona com atualização contínua, não executar esta etapa pode
# ... acabar quebrando instalações.
sudo pacman -Syu

# -- internet
sudo pacman -S --noconfirm --needed network-manager # comando nmcli 
sudo pacman -S --noconfirm --needed net-tools # comandos legados como iw ifconfig 
sudo pacman -S --noconfirm --needed dnsmasq
sudo pacman -S --noconfirm --needed wireless-regdb
# sudo pacman -S --noconfirm --needed nethogs # visualiza conexão à internet por aplicações

# -- firmware
# sudo pacman -S --noconfirm --needed linux-firmware
# sudo pacman -S --noconfirm --needed intel-ucode
# sudo pacman -S --noconfirm --needed amd-ucode
sudo pacman -S --noconfirm --needed linux-headers nvidia-open nvidia-utils nvidia-settings

# -- servidor gráfico e window manager
# Xorg e i3 estão nos repositórios principais.
sudo pacman -S --noconfirm --needed xorg xorg-xinit xorg-apps xorg-xrandr xorg-xrdb xterm xorg-twm xorg-xclock
sudo pacman -S --noconfirm --needed ttf-dejavu ttf-liberation 
sudo pacman -S --noconfirm --needed i3-wm i3status i3lock dmenu
sudo pacman -S --noconfirm --needed dex xss-lock network-manager-applet
sudo pacman -S --noconfirm --needed picom
#sudo pacman -S --noconfirm --needed lightdm lightdm-gtk-greeter # login gráfico
#sudo systemctl enable lightdm

# -- ferramentas de compilação 
sudo pacman -S --noconfirm --needed base-devel # gcc make
sudo pacman -S --noconfirm --needed libx11 libxkbcommon libxkbcommon-x11 # x11
sudo pacman -S --noconfirm --needed gtk3 gtk4 # gtk 
sudo pacman -S --noconfirm --needed vulkan-headers

# -- servidor de áudio 
sudo pacman -S --noconfirm --needed pipewire pipewire-alsa pipewire-pulse pipewire-jack wireplumber
systemctl --user enable --now pipewire-pulse # Habilitar o serviço (geralmente ativado por socket, mas garantimos)

# -- aplicativos 
sudo pacman -S --noconfirm --needed thunar # gtk explorador e gerenciador de arquivos 
# sudo pacman -S --noconfirm --needed nnn # interface de terminal para explorador e gerenciador de arquivos 
sudo pacman -S --noconfirm --needed polkit-gnome # server de autenticação
sudo pacman -S --noconfirm --needed lxappearance # configuração gtk
sudo pacman -S --noconfirm --needed arandr # configuração do display
sudo pacman -S --noconfirm --needed 7zip # compressão e extração de arquivos
# sudo pacman -S --noconfirm --needed unzip unrar # compressão e extração de arquivos
sudo pacman -S --noconfirm --needed firefox # navegador web
# sudo pacman -S --noconfirm --needed falkon # navegador web leve 
# sudo pacman -S --noconfirm --needed qutebrowser # navegador web leve 
sudo pacman -S --noconfirm --needed curl wget git # ferramentas cli de internet 
sudo pacman -S --noconfirm --needed htop # gerenciador de processos de terminal
sudo pacman -S --noconfirm --needed btop # gerenciador de processos de terminal
sudo pacman -S --noconfirm --needed pavucontrol alsa-utils # interfaces de configuração de áudio 
sudo pacman -S --noconfirm --needed feh scrot imagemagick # screenshot e background 
# sudo pacman -S --noconfirm --needed nitrogen # configuração de background 
sudo pacman -S --noconfirm --needed geany # editor de texto e código
# sudo pacman -S --noconfirm --needed obs-studio # streaming e gravação de tela 
# sudo pacman -S --noconfirm --needed wine wine-mono wine-gecko winetricks 
sudo pacman -S --needed evince # visualizador leve de pdf 
sudo pacman -S --needed texlive-latexrecommended # compilador de pdf 
# sudo pacman -S --noconfirm --needed transmission-qt # torrent
sudo pacman -S --noconfirm --needed qbittorrent # torrent

# -- temas gtk
sudo pacman -S --noconfirm --needed adwaita-icon-theme
sudo pacman -S --noconfirm --needed papirus-icon-theme
sudo pacman -S --noconfirm --needed gnome-themes-extra

# -- utilitários de sistema
sudo pacman -S --noconfirm --needed gparted
sudo pacman -S --noconfirm --needed brightnessctl # 'xbacklight' é legado, brightnessctl é o padrão atual
sudo pacman -S --noconfirm --needed dunst # notificações leves para i3
# sudo pacman -S --noconfirm --needed ufw # Firewall

# -- fontes de texto
sudo pacman -S --noconfirm --needed ttf-dejavu ttf-liberation ttf-droid \
                 noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra \
                 ttf-roboto ttf-roboto-mono ttf-opensans ttf-lato \
                 ttf-fira-code ttf-fira-mono \
                 ttf-font-awesome \
                 ttf-hack ttf-inconsolata

#fc-cache -fv # regenera o cache de fontes 
#sudo mkinitcpio -P # regenera o initramfs

# END   
