directory=/Users/guotaiwang/Documents/data/BraTS2018_Validation
my_image=bc4a4f723ff2
mkdir $directory/results
docker run -v $directory:/data --workdir=/usr/src/app -i -t $my_image python /data/brats18/docker/main.py /data/brats18/docker/test_cfg1.txt
