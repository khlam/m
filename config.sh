# curl -sSL https://git.io/JTbbu | bash
#sudo pacman-mirrors --fasttrack 		
sudo pacman-mirrors --country United_States
sudo pacman -Syu --noconfirm
# sudo systemctl enable fstrim.timer

sudo pacman -Rcns kate konversation kdeconnect yakuake --noconfirm

sudo pacman -S keepassxc vlc vim --noconfirm

cd ~/Downloads/
curl -L https://github.com/khlam/m/raw/master/plasmaBackup.tar.gz | tar zx

cd ~/Downloads/plasmaBackup/
ls -la