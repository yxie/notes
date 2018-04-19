# Dataset download scripts (tensorflow)
## CIFAR10
### Dataset (The script works on python2 only)
[Dataset download script](https://github.com/tensorflow/models/blob/master/tutorials/image/cifar10_estimator/generate_cifar10_tfrecords.py)


### ResNet Model
[Tensorflow Model](https://github.com/tensorflow/models/tree/master/tutorials/image/cifar10_estimator)

Usage:

```
python cifar10_main.py --data-dir=${PWD}/data/cifar-10-data \
                       --job-dir=${PWD}/models/cifar10 \
                       --num-gpus=1 \
                       --train-steps=40000
```

Accuracy:
