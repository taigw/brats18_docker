directory=/Users/guotaiwang/Documents/data/BraTS2018_Validation
my_image=4dff82933875
docker run -v $directory:/data --workdir=/usr/src/app -i -t $my_image python docker/main.py docker/test_cfg.txt
