mv ./assets ~
mv ./ags ~/.config
rm ./hypr/hyprland.conf
mv ./hypr ~/.config
mv ./kitty ~/.config
mv ./.bashrc ~

cd ~
sudo pacman -S --needed git base-devel hyprland kitty dolphin firefox bluez bluez-utils brightnessctl playerctl grim slurp wl-utils rofi rust
mkdir git

cd git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -S --needed aylurs-gtk-shell

cd ~/git
git clone https://github.com/adi1090x/rofi.git
cd rofi
chmod +x setup.sh
./setup.sh

cd ~/git
git clone https://github.com/LGFae/swww.git
cd swww
cargo build --release
sudo mv target/release/swww target/release/swww-daemon /bin

cd ~/git
git clone https://github.com/ful1e5/Bibata_Cursor.git

echo 'alr should be done'
