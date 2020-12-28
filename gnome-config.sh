# curl -sSL https://git.io/khlgnome | bash
sudo pacman-mirrors --country United_States
sudo pacman -Syu --noconfirm

sudo pacman -Rcns totem --noconfirm

sudo pacman -S keepassxc vlc vim firefox snapd--noconfirm
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap

sudo snap install snap-store
sudo snap install chromium
sudo snap install sublime-text --classic