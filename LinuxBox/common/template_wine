# BEGIN Wine Script 
export WINEARCH=win32
export WINEPREFIX=/media/user/Data/Wine/Win3x
MARKER_FILE="${WINEPREFIX}/.castle_setup_done"
if [ -f "$MARKER_FILE" ]; then
    echo "Setup already detected. Skipping installation steps."
else
    echo "Initializing Wine prefix and installing components..."
    # Initialize the prefix
    wineboot --init
    # Set Windows version and install components
    # winetricks will skip if already present, but this block only runs once
    winetricks -q win95
    winetricks -q vcrun5 vcrun6 mfc42 gdiplus
    winetricks -q corefonts
    # Create the marker file to indicate success
    touch "$MARKER_FILE"
    echo "Setup complete."
fi
wine /media/user/Data/Wine/Programs/CoTW/CASTLE1.EXE &
# END 