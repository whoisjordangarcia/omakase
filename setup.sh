art=' ▄██████▄    ▄▄▄▄███▄▄▄▄      ▄████████    ▄█   ▄█▄    ▄████████    ▄████████    ▄████████ 
███    ███ ▄██▀▀▀███▀▀▀██▄   ███    ███   ███ ▄███▀   ███    ███   ███    ███   ███    ███ 
███    ███ ███   ███   ███   ███    ███   ███▐██▀     ███    ███   ███    █▀    ███    █▀  
███    ███ ███   ███   ███   ███    ███  ▄█████▀      ███    ███   ███         ▄███▄▄▄     
███    ███ ███   ███   ███ ▀███████████ ▀▀█████▄    ▀███████████ ▀███████████ ▀▀███▀▀▀     
███    ███ ███   ███   ███   ███    ███   ███▐██▄     ███    ███          ███   ███    █▄  
███    ███ ███   ███   ███   ███    ███   ███ ▀███▄   ███    ███    ▄█    ███   ███    ███ 
 ▀██████▀   ▀█   ███   █▀    ███    █▀    ███   ▀█▀   ███    █▀   ▄████████▀    ██████████ 
                                          ▀                                                '
# todo need to have gum installed on machine
yay -S --noconfirm --needed gum

echo -e "\n$art\n"

platform=$(gum choose "arch" "fedora" "ubuntu" "macos")

# Install everything
for f in ~/dev/omakase/install/"$platform"/*.sh; do source "$f"; done

echo -e "\nomakase installation complete."
