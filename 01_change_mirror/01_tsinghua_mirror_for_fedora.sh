sudo mv /etc/yum.repos.d/fedora.repo /etc/yum.repos.d/fedora.repo.backup
sudo mv /etc/yum.repos.d/fedora-updates.repo /etc/yum.repos.d/fedora-updates.repo.backup
sudo mv /etc/yum.repos.d/fedora-modular.repo /etc/yum.repos.d/fedora-modular.repo.backup
sudo mv /etc/yum.repos.d/fedora-updates-modular.repo /etc/yum.repos.d/fedora-updates-modular.repo.backup
sudo cp ./fedora.repo /etc/yum.repos.d/fedora.repo
sudo cp ./fedora-updates.repo /etc/yum.repos.d/fedora-updates.repo
sudo cp ./fedora-modular.repo /etc/yum.repos.d/fedora-modular.repo
sudo cp ./fedora-updates-modular.repo /etc/yum.repos.d/fedora-updates-modular.repo
sudo dnf makecache