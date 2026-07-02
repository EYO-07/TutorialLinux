# BEGIN
# 1. Use it to complex commands 
# 2. Always comment-out commands after done

# -- fix xdg portal 
#mkdir -p ~/.config/xdg-desktop-portal
#touch ~/.config/xdg-desktop-portal/i3-portals.conf 
#echo "[preferred]\ndefault=gtk" >> ~/.config/xdg-desktop-portal/i3-portals.conf 
#cat ~/.config/xdg-desktop-portal/i3-portals.conf 

# -- fix fontconfig
# Remove user cache directories
#rm -rf ~/.cache/fontconfig
#rm -rf ~/.fontconfig
# Regenerate the cache
#fc-cache -f -v   

# mkdir -p ~/.local/share/icons/hicolor   

# -- check dnsmasq 
# journalctl -u NetworkManager | grep dnsmasq 
#ps -ef | grep dnsmasq   
#sudo grep -r "dns=dnsmasq" /etc/NetworkManager/   

# -- ufw firewall 
#sudo pacman -S --noconfirm --needed ufw
#sudo ufw default deny incoming 
#sudo ufw default allow outgoing 
#sudo ufw enable 
#sudo systemctl enable ufw.service 

# -- ufw allow proton vpn
# sudo ufw allow in on proton0 from any to any 

# sudo journalctl -f | grep ufw 
# sudo journalctl -f -k

# sudo cat /sys/module/apparmor/parameters/enabled 

# -- listen to port 53 default dns port 
# sudo lsof -i :53 -S 
# sudo ss -tulpn | grep :53   
# systemctl status systemd-resolved   
# sudo ss -tulpn | grep :53   

# 1. Ensure PipeWire and WirePlumber are active
# systemctl enable --user --now pipewire pipewire-pulse wireplumber
# 2. Ensure REAL PulseAudio is dead and buried
#systemctl --user stop pulseaudio
#systemctl --user disable pulseaudio
#systemctl --user mask pulseaudio
# 3. (Optional) Disable legacy ALSA restore if issues persist
# systemctl disable alsa-restore.service

# -- ufw reset 
# sudo ufw reset 
#sudo ufw default deny incoming 
#sudo ufw default allow outgoing
#sudo ufw enable 

# -- disable ipv6 
#CNAME='Otomo_4G'
#nmcli connection down "${CNAME}"
#nmcli connection modify "${CNAME}" ipv6.method "disabled"
#nmcli connection up "${CNAME}"
#nmcli connection show "${CNAME}" | grep ipv6.method

# -- rkhunter 
#sudo rkhunter --propupd
#sudo rkhunter --update 
#sudo rkhunter --check --skip-keypress --report-warnings-only

# -- switch nvidia-open-dkms from nvidia-open 
# sudo pacman -Rdd nvidia-open
# sudo pacman -S --noconfirm --needed linux-headers nvidia-open-dkms nvidia-utils nvidia-settings 

# -- nvidia suspension services 
#sudo systemctl enable nvidia-suspend.service
#sudo systemctl enable nvidia-hibernate.service
#sudo systemctl enable nvidia-resume.service 







# END
