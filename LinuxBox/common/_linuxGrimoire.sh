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


# END 