directory=/Users/guotaiwang/Documents/data/BraTS2018_Validation
my_image=bc4a4f723ff2
mkdir $directory/results
docker run -v $directory:/data --workdir=/usr/src/app -i -t $my_image python /data/brats18/docker/main.py /data/brats18/docker/test_cfg1.txt
docker run -v $directory:/data --workdir=/usr/src/app -i -t $my_image python /data/brats18/docker/main.py /data/brats18/docker/test_cfg2.txt
docker run -v $directory:/data --workdir=/usr/src/app -i -t $my_image python /data/brats18/docker/main.py /data/brats18/docker/test_cfg3.txt
docker run -v $directory:/data --workdir=/usr/src/app -i -t $my_image python /data/brats18/docker/main.py /data/brats18/docker/test_cfg4.txt
docker run -v $directory:/data --workdir=/usr/src/app -i -t $my_image python /data/brats18/docker/main.py /data/brats18/docker/test_cfg5.txt
docker run -v $directory:/data --workdir=/usr/src/app -i -t $my_image python /data/brats18/docker/vote_result.py /data/brats18/docker/vote_result_cfg.txt
