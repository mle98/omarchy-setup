sudo pacman --noconfirm -S linux-hardened
yay --noconfirm -S apparmor.d-git
sudo systemctl enable --now apparmor.service
sudo sed -i 's/"quiet splash"/"quiet splash lsm=landlock,lockdown,yama,integrity,apparmor,bpf"/' /etc/default/limine
