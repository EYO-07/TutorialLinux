# BEGIN 

# _linuxGrimoire.sh 
# 1. Grimoire : list of inventories 
# 2. Inventory : cheatsheets with useful informations 
# ... you should use LLMs to generate and curate inventories, but design the prompt carefully, not every LLM is smart enough to understand. 

# -- LLM PROMPT -- 

# Prompt Example : 
# > Context : Bash, Linux 
# > Problem : create/expand these inventories using the format below.
# > Constraint : these inventories will be copied to source/scripts files, return the inventory as a comment-block.
# Inventory : EXAMPLE { CONTEXT }
# 1. SYNTAX_OR_DEFINITION // SHORT_DESCRIPTION
# 2. Inventory // is a cheatsheet formated as comment-block 
# 3. Inventory : NAME { CONTEXT } // NAME { CONTEXT } helps organize and identify inventories 

# -- INVENTORY HEADERS -- 
# Inventory : Installation Steps { Linux } ! 
# Inventory : Partitions { Linux } ! 
# Inventory : Basic Commands { Linux, Bash } !
# Inventory : Wifi Issues / Broadcom { Linux } ! 
# Inventory : Aliases { Linux, Bash } !
# Inventory : Autocompletion Customization { Linux, Bash } !
# Inventory : Command-Line Operators { Linux, Bash } ! 
# Inventory : Control Structures { Linux, Bash } ! 
# Inventory : Keyboard Settings { Linux Bash } ! 
# Inventory : Users & Groups { Linux, Bash } ! 
# Inventory : Bootloader / Grub { Linux, Bash } ! 
# Inventory : Filesystem Operations { Linux, Bash } ! 
# Inventory : File Explorer / nnn { Linux } ! 
# Inventory : Mounting Filesystem { Linux, Bash } ! 
# Inventory : Text Code Editor / nano { Linux } ! 
# Inventory : Package Manager / apt { Linux, Bash } ! 
# Inventory : Poiting Package Manager to Local Iso File / apt { Linux, Debian, Bash } ! 
# Inventory : Package Manager / pacman { Linux, Bash } ! 
# Inventory : Package Manager / dnf { Linux, Bash } ! 
# Inventory : Network Interfaces / networking { Linux, Bash } !
# Inventory : Network Interfaces / NetworkManager { Linux, Bash } !
# Inventory : Firewall / ufw { Linux, Bash, Firewall } ! 
# Inventory : Graphical Server / XOrg { Linux, Bash } ! 
# Inventory : Audio Server / Pipewire+Wireplumber { Linux, Bash } ! 
# Inventory : Audio Server / Pipewire+Pulseaudio { Linux, Bash } ! 
# Inventory : Desktop Environment / i3+picom { Linux } ! 
# Inventory : Compilation Toolchain { Linux, Bash } ! 
# Inventory : File Compression and Extraction / 7z { Linux, Bash } ! 
# Inventory : Sharing Connection / NetworkManager { Linux, Bash } ! 
# Inventory : Sharing Files and Partitions / Samba { Linux, Bash } ! 

# -- INVENTORY : DEBIAN -- 

# -- INVENTORY : ARCH -- 

# -- ALIASES -- 
# 1. High-Level ; alias should be high-level commands 
# ... the verbosity is better for human memory 
# ... just use tab for autocompletion 
# 2. Unique ; design the commands to not collide with other commands, system commands or applications.
# ... will be easier to use autocompletion.

# -- variables (CHANGE ME)
D1='DISPLAY1'
D2='DISPLAY2'
# -- system 
alias errors='sudo dmesg | grep -iE "error|critical|failed|failure" | tee ~/errors.txt'
alias processes='ps auxf | tee ~/processes.txt'
# -- services
alias services='systemctl list-units --type=service | tee ~/services.txt'
alias check_service='systemctl --user status'
alias restart_service='systemctl --user restart'
# -- devices 
alias devices='lspci -k | tee ~/devices.txt'
alias storage_devices='(sudo blkid && sudo fdisk -l) | tee ~/storage_devices.txt'
# -- video 
alias display_monitors='xrandr --query | tee ~/monitors.txt'
alias dualmonitor1='xrandr --output $D1 --primary --auto --output $D2 --auto --right-of $D1'
alias dualmonitor2='xrandr --output $D1 --primary --auto --output $D2 --auto --left-of $D1'
# -- audio 
alias audio_devices='wpctl status'
alias set_audio_sink='wpctl set-default'
# -- boot 
alias restart='sudo reboot'
alias hibernate='systemctl hibernate'
alias suspend='systemctl suspend'
alias shutdown='sudo poweroff'
# -- internet 
alias online='nmcli networking on'
alias offline='nmcli networking off'
alias kill_connection='nmcli connection down'
alias delete_connection='nmcli connection delete'
# --
alias activate='chmod +x'
alias deactivate='chmod -x'
alias file_compress=''
alias file_extract=''
alias tar_extract='tar -xf'
# -- filesystem operation
alias create_folder='mkdir -p'
alias rename_file=''
alias rename_folder=''
alias copy_to_folder=''
alias move_to_folder=''
# -- 
alias mount_points='lsblk -l | tee ~/mount_points.txt'
alias mount_iso='mount -o loop'

# END 