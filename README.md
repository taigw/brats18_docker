# Automatic Brain Tumor Segmentation using Cascaded Anisotropic CNNs
Dockerfile and supporting files to create a new Docker image from the Source Code at [Cmiclab][cmic_code](a mirror on [Github][github_code])
for brain tumor segmentation according to the following paper:

[cmic_code]:https://cmiclab.cs.ucl.ac.uk/gwang/brats17
[github_code]:https://github.com/taigw/brats17

*Guotai Wang, Wenqi Li, Sebastien Ourselin, Tom Vercauteren. "Automatic Brain Tumor Segmentation using Cascaded Anisotropic Convolutional Neural Networks."
arXiv preprint arXiv:1710.04043 (2017). https://arxiv.org/abs/1709.00382

## How to use

### 1, Download the source code of this repositry, and the source code of brain tumor segmentation.

```bash
git clone git@cmiclab.cs.ucl.ac.uk:gwang/brats_dc.git
cd brats17_dc
git clone git@cmiclab.cs.ucl.ac.uk:gwang/brats17.git
```

### 2, Build the docker image.

```bash
docker build . < Dockerfile
```

You will get some screen outputs like `Successfully built 1397ed13c161` where `1397ed13c161` is the docker image id.

### 3, Open the `./run.sh` file and edit `directory` and `my_image`.

```bash
# content of ./run.sh
directory=/Users/guotaiwang/Documents/data/BRATS/Testing/HGG_LGG
my_image=1397ed13c161
mkdir $directory/results
docker run -v $directory:/data --workdir=/usr/src/app -i -t $my_image python main.py
```
where `directory` is the dir in which the testing images are stored. For example, when you uncompress BRATS2015_Testing.zip you will get a folder named `Testing`, and there is a subfolder named `HGG_LGG` under that. The folder looks like:

![A slice from BRATS17](./pic/testing_path.png)

Please set `directory` as the full path of `HGG_LGG`, and set `my_image` as the docker image id obtained in the previous step.
Note that each time when you build the docker image, the id may change and `my_image` should be reset accordingly.

### 4, Set docker memory to 16G.
Since GPU computing with docker is not implemented, only CPU is used when running the segmentation code in docker. The code requires a large memory and ~525s for segmenting one brain tumor with CPU. Please set the memory for docker to 16G, as illustrated in the following:

![A slice from BRATS17](./pic/docker_set.png)

### 5, Now run the bash file to start the segmentation.

```bash
bash ./run.sh
```

The segmentation results will be saved to $directory/results.
