directory=/Users/guotaiwang/Documents/data/BraTS2018_Validation
my_image=4dff82933875
docker run -v $directory:/data --workdir=/usr/src/app -i -t $my_image python docker/main.py docker/test_cfg_tta1.txt
docker run -v $directory:/data --workdir=/usr/src/app -i -t $my_image python docker/main.py docker/test_cfg_tta2.txt
docker run -v $directory:/data --workdir=/usr/src/app -i -t $my_image python docker/main.py docker/test_cfg_tta3.txt
docker run -v $directory:/data --workdir=/usr/src/app -i -t $my_image python docker/main.py docker/test_cfg_tta4.txt
docker run -v $directory:/data --workdir=/usr/src/app -i -t $my_image python docker/main.py docker/test_cfg_tta5.txt
docker run -v $directory:/data --workdir=/usr/src/app -i -t $my_image python docker/vote_result.py docker/vote_result_cfg.txt
