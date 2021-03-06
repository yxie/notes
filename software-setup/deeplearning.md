# Basic
Keep ubuntu up-to-date
```
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install build-essential cmake g++ gfortran git vim pkg-config python-dev software-properties-common wget
sudo apt-get autoremove
```

# Cuda
Download: https://developer.nvidia.com/cuda-downloads

Install guide (official): https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html
* 2 Pre-installation Actions
* 3.6 Ubuntu
* 7 Post-installation Actions

Add CUDA to enviroment variables:
* Add the following lines to file `~/.bashrc`
```
export PATH=/usr/local/cuda-9.0/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-9.0/lib64 ${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
```
* Run `source ~/.bashrc`

Test your installation:
```
cd /usr/local/cuda/samples/1_Utilities/deviceQuery
sudo make
sudo ./deviceQuery
```


# CuDNN
Download: https://developer.nvidia.com/cudnn

Install guide (official): http://docs.nvidia.com/deeplearning/sdk/cudnn-install/index.html

Install guide (other): https://gist.github.com/sayef/8fc3791149876edc449052c3d6823d40

Test your installation:

To verify that cuDNN is installed and is running properly, compile the `mnistCUDNN` sample located in the `/usr/src/cudnn_samples_v7` directory in the debian file. If there is no such samples, download `cuDNN v7.0 Code Samples` and User Guide for Ubuntu16.04 (Deb) from the same list mentioned above.
```
cp -r /usr/src/cudnn_samples_v7/ $HOME
cd $HOME/cudnn_samples_v7/mnistCUDNN
make clean && make
./mnistCUDNN
```
If it is properly installed and running on your Linux system, you will see a message similar to the following: Test passed!

# Anaconda
Download: https://www.anaconda.com/download/#linux

Install guide (official)): https://conda.io/docs/user-guide/install/linux.html

Test your installation: `conda list`

# Tensorflow


Install guide (official): https://www.tensorflow.org/install/install_linux

Install through anaconda:
```
conda create -n tensorflow python=2.7
source activate tensorflow
pip install pip install --ignore-installed --upgrade <tfBinaryURL>
```

Select the tfBinaryURL based on Python version and GPU support:
```
https://www.tensorflow.org/versions/master/install/install_linux#the_url_of_the_tensorflow_python_package
```


Test your installation:
```
source activate tensorflow
python
>>> import tensorflow
>>>
```

Upgrade tensorflow
```
pip install --upgrade <tfBinaryURL>
```

# Pytorch
Create new conda environment:
```
conda create -n pytorch python=2.7
source activate pytorch
```
Check official website to get installation command:
```
conda install pytorch torchvision cuda90 -c pytorch
```
Test your installation:
```
source activate Pytorch
python
>>> import torch
>>> torch.cuda.is_available()
True
```

# CleverHans
[CleverhHans](https://github.com/tensorflow/cleverhans) is a Python library to benchmark machine learning systems' vulnerability to [adversarial examples](http://karpathy.github.io/2015/03/30/breaking-convnets/). You can learn more about such vulnerabilities on the accompanying [blog](http://cleverhans.io).

Install guide (official): https://github.com/tensorflow/cleverhans
* use pip
    `pip install -e git+https://github.com/tensorflow/cleverhans.git#egg=cleverhans`

* add python PATH, change "/path/to/cleverhans" to the installed directory

  Add this line `export PYTHONPATH="/path/to/cleverhans":$PYTHONPATH` to file `~/.bashrc`

  Run `source ~/.bashrc`


# Reference
[Learning AI if You Suck at Math — P3 — Building an AI Dream Machine or Budget Friendly Special](https://hackernoon.com/learning-ai-if-you-suck-at-math-p3-building-an-ai-dream-machine-or-budget-friendly-special-d5a3023140ef)

[从零开始配置你的深度学习服务器+踩坑经验](https://zhuanlan.zhihu.com/p/32185946)
