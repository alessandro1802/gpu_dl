sudo dpkg -i cudnn-local-repo-ubuntu2204-8.9.4.25_1.0-1_amd64.deb
sudo cp /var/cudnn-local-repo-*/cudnn-local-*-keyring.gpg /usr/share/keyrings/
sudo apt-get update

sudo apt install -y libcudnn8=8.9.4.25-1+cuda11.8 libcudnn8-dev=8.9.4.25-1+cuda11.8 libcudnn8-samples=8.9.4.25-1+cuda11.8

sudo apt-mark hold "libcudnn8*"
