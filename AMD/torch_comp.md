# Building PyTorch from source
Without AVX instructions and with ROCm support.

```shell
git clone --recursive https://github.com/pytorch/pytorch
cd pytorch
```

## Environment
```shell
python3.11 -m venv .venv
source .venv/bin/activate
```

```shell
pip install cmake ninja
pip install -r requirements.txt
pip install mkl-static mkl-include
pip install pybind11
```

## Flags
Disable AVX:
```shell
export CFLAGS="-mno-avx -mno-avx2 -mno-fma"
export CXXFLAGS="-mno-avx -mno-avx2 -mno-fma"
export CMAKE_C_FLAGS="-mno-avx -mno-avx2 -mno-fma"
export CMAKE_CXX_FLAGS="-mno-avx -mno-avx2 -mno-fma"
```

Enable ROCm:
```shell
export USE_ROCM=1
export ROCM_PATH=/opt/rocm
export PYTORCH_ROCM_ARCH="gfx803;gfx900;gfx906;gfx908;gfx90a;gfx1030"
```

## Build
Prepare for ROCm compilation:
```shell
python tools/amd_build/build_amd.py
```

Compile PyTorch:
```shell
python setup.py develop
```

Export wheel to `dist/`:
```
python setup.py bdist_wheel
```

