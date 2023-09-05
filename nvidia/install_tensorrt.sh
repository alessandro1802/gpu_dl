os="ubuntu2204"
tag="8.6.1-cuda-11.8"
sudo dpkg -i nv-tensorrt-local-repo-${os}-${tag}_1.0-1_amd64.deb
sudo cp /var/nv-tensorrt-local-repo-${os}-${tag}/*-keyring.gpg /usr/share/keyrings/
sudo apt-get update

cd /var/nv-tensorrt-local-repo-ubuntu2204-8.6.1-cuda-11.8/
sudo dpkg -i *.deb
sudo apt --no-install-recommends install python3-libnvinfer=8.6.1.6-1+cuda11.8

sudo apt-mark hold "*graphsurgeon*" "*libnvinfer*" "libnvonnxparsers*" "libnvparsers*" "tensorrt*" "uff-converter-tf"
