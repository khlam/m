cd ~/Downloads/

curl -s https://api.github.com/repos/syncthing/syncthing/releases/latest | grep browser_download_url | grep linux-amd64 | cut -d '"' -f 4 | wget -qi -

tar xvf syncthing-linux-amd64*.tar.gz

sudo cp syncthing-linux-amd64-*/syncthing  /usr/local/bin/

sudo echo '[Unit]
Description=Syncthing
Documentation=man:syncthing(1)
After=network.target

[Service]
User=%i
ExecStart=/usr/local/bin/syncthing -no-browser -gui-address="0.0.0.0:8384" -no-restart -logflags=0
Restart=on-failure
SuccessExitStatus=3 4
RestartForceExitStatus=3 4

# Hardening
ProtectSystem=full
PrivateTmp=true
SystemCallArchitectures=native
MemoryDenyWriteExecute=true
NoNewPrivileges=true

[Install]
WantedBy=multi-user.target' > syncthing@.service

sudo mv syncthing@.service /etc/systemd/system/

sudo systemctl daemon-reload
sudo systemctl start syncthing@$USER
sudo systemctl enable syncthing@$USER

sudo systemctl status syncthing@$USER