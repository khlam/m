# curl -sSL https://git.io/JTbbu | bash
#sudo pacman-mirrors --fasttrack 		
sudo pacman-mirrors --country United_States
sudo pacman -Syu
# sudo systemctl enable fstrim.timer

sudo pacman -Rcns kate konversation kdeconnect --noconfirm

sudo pacman -S keepassxc --noconfirm