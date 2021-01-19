# Get the default profile id
PROFILE_ID=$(dconf dump /org/gnome/terminal/legacy/profiles:/ | sed -ne "s@default='\([^]]*\)'@\1@gp")
# Override the default profile with custom profile
dconf load /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/ < profile.dconf
