gfx803

```shell
sudo apt update
wget https://repo.radeon.com/amdgpu-install/6.3.2/ubuntu/noble/amdgpu-install_6.3.60302-1_all.deb
sudo apt install ./amdgpu-install_6.3.60302-1_all.deb 
sudo amdgpu-install -y --usecase=graphics,rocm
```

```shell
sudo usermod -a -G render,video $LOGNAME
echo ROC_ENABLE_PRE_VEGA=1 >> /etc/environment
echo HSA_OVERRIDE_GFX_VERSION=8.0.3 >> /etc/environment
```

