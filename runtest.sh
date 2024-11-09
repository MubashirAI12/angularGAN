a=$(ls datasets/GTAV/AB/test | wc -l)
echo $a
python test.py --dataroot ./datasets/GTAV/AB --name angular_gan --model angular_gan_v2 --which_direction BtoA --display_id -1 --how_many $a
