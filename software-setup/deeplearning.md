# Cuda
Download: https://developer.nvidia.com/cuda-downloads

Install guide (official): https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html
* 2 Pre-installation Actions
* 3.6 Ubuntu
* 7 Post-installation Actions

Add CUDA to enviroment variables:
* Add the following lines to file `~/.bashrc`
```
export PATH=/usr/local/cuda-9.1/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-9.1/lib64 ${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
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
Download: https://pypi.python.org/pypi/tensorflow

Install through anaconda:
```
conda create -n tensorflow python=2.7
source activate tensorflow
pip install tensorflow-<version>.whl
```
