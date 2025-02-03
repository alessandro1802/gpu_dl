sudo apt-get install linux-headers-$(uname -r)
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-keyring_1.1-1_all.deb
sudo dpkg -i cuda-keyring_1.1-1_all.deb
sudo apt-get update

sudo apt install cuda-11-8

# Add CUDA to PATH
echo -e "# CUDA" >> ~/.bashrc
echo -e "export PATH=/usr/local/cuda/bin:$PATH" >> ~/.bashrc
echo -e "export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARRY_PATH" >> ~/.bashrc
