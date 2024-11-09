# AngularGAN for Satellite Imagery Processing

This repository contains the code for AngularGAN, a conditional GAN-based model for multi-illuminant color constancy, originally presented in <br>
[O Sidorov. Conditional GANs for Multi-Illuminant Color Constancy: Revolution or Yet Another Approach?](https://arxiv.org/abs/1811.06604)
<br>

![image preview](https://github.com/acecreamu/angularGAN/blob/master/image.jpg)

# AngularGAN for Satellite Imagery Processing
AngularGAN extends the image-to-image translation algorithm ["pix2pix" by Isola *et al.*](https://arxiv.org/abs/1611.07004) to tackle color constancy challenges and has been adapted here for satellite imagery processing. It builds on the  [this](https://github.com/junyanz/pytorch-CycleGAN-and-pix2pix) , requiring only minimal modifications to run on custom datasets.

## Key Features
- Multi-illuminant Color Correction: Designed to handle diverse illuminations, making it versatile for use cases like satellite imagery.
- Dataset Agnostic: Originally focused on color constancy, AngularGAN can be repurposed for various image translation tasks.
#### Datasets are below!</br>
### Getting started
- Put your data in datasets/dataset_name in the format
```
-dataset_name/
    -test/
        -xxx.jpg
        -yyy.jpg
        -...
    -train/
        -zzz.jpg
        -...
```
where each image consist of couple of images A and B (input and output) concatenated along horizontal axis.</br>
- Run datasets/combine_A_and_B.py file to concatendate the images in A and B folder horizontally. A folder contains the ilumminated images and B folder contains the ground truth images.
- Run `visdom` to open training visualization (optional)
- Run training (change parameter `--model angular_gan_v2` to use v2)
```
chmod a+x run.sh
./run.sh
```
- Replace `runtest.sh` for testing  (change parameter `--model angular_gan_v2` to use v2)</br></br>
*We thank autors of pix2pix for their excellent work!*

![angulargan_framework](https://github.com/acecreamu/angularGAN/blob/master/angulargan.jpg)

# Datasets
### Spacecraft Shadow Removal Dataset 
The spacecraft Shadow Removal Dataset may be acessed by the [link](https://github.com/xiang-ao-data/Spacefuse-shadow-removal/tree/master/spacedataset).<br>

#### Preview

![dataset preview](https://github.com/xiang-ao-data/Spacefuse-shadow-removal/blob/master/spacedataset/1/A/image%2031.png)
