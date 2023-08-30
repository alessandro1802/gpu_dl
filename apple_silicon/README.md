# Apple Silicon
The situation is relatively simple, just to install several libraries, all the needed drivers should be already present.  
Tested setup:
| Package    | Version |
|------------|---------|
| tensorflow | 2.13.0  |
| torch      | 2.0.1   |

## Tensorflow
Apart from the TF library itself, one additional plugin is needed: `tensorflow-metal`.
### Expected output
`[PhysicalDevice(name='/physical_device:GPU:0', device_type='GPU')]`

## PyTorch
A GPU here is referred to as MPS (Metal Performance Shaders).
### Expected output
`tensor([1.], device='mps:0')`

## Sources
[Tensorflow](https://developer.apple.com/metal/tensorflow-plugin/)
[PyTorch](https://developer.apple.com/metal/pytorch/)
