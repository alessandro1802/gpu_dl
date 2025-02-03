# NVIDIA
Tested versions:
| Software      | Version |
|---------------|---------|
| Ubuntu        | 22.04   |
| NVIDIA Driver | 550.120 |
| NVCC          | 11.5    |
| CUDA          | 12.4    |
| Python        | 3.11    |
| PyTorch       | 2.6.0   |
| TensorFlow    | 2.18.0  |

## Set-up

### PyTorch
```shell
python3.11 -m venv .venv_torch
source .venv_torch/bin/activate
pip install -r requirements_torch.txt 
```

### TensorFlow
```shell
python3.11 -m venv .venv_tf
source .venv_tf/bin/activate
pip install -r requirements_tf.txt 
```

