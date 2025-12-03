sudo pacman --noconfirm -S linux-hardened linux-hardened-headers
yay --noconfirm -S apparmor.d-git
sudo systemctl enable --now apparmor.service
sudo sed -i 's/"quiet splash"/"quiet splash lsm=landlock,lockdown,yama,integrity,apparmor,bpf"/' /etc/default/limine
grep '^timeout' /boot/limine.conf || (echo 'timeout: 30' | sudo tee -a /boot/limine.conf > /dev/null)

# firewall
sudo ufw delete allow 53317/udp
sudo ufw delete allow 53317/tcp
yes | sudo ufw delete 1
