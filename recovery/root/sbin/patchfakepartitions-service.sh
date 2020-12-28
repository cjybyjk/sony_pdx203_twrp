#!/system/bin/sh
# This script is needed to permananetly keep reserve_a and reserve_b fake partitions and /data/reserve/reserve.img and to keep india_a and india_b fake partitions and /data/india/india.img.

n=1

while [ $n -le 2 ]
do
# Check if already exist the /data/reserve directory symlink and create it
if [ -d /data/reserve ];
then
    echo "/data/reserve already exist"
else
    mkdir /data/reserve
    echo "/data/reserve created"
fi

# Check if already exist the /data/reserve/reserve.img symlink and create it
if [ -f /data/reserve/reserve.img ];
then
    echo "/data/reserve/reserve.img already exist"
else
    touch /data/reserve/reserve.img
    echo "/data/reserve/reserve.img created"
fi

# Check if already exist the /dev/block/bootdevice/by-name/reserve_a symlink and create it
if [ -L /dev/block/bootdevice/by-name/reserve_a ];
then
    echo "/dev/block/bootdevice/by-name/reserve_a already exist"
else
    ln -s /data/reserve/reserve.img /dev/block/bootdevice/by-name/reserve_a
    echo "/dev/block/bootdevice/by-name/reserve_a created"
fi

# Check if already exist the /dev/block/bootdevice/by-name/reserve_b symlink and create it
if [ -L /dev/block/bootdevice/by-name/reserve_b ];
then
    echo "/dev/block/bootdevice/by-name/reserve_b already exist"
else
    ln -s /data/reserve/reserve.img /dev/block/bootdevice/by-name/reserve_b
    echo "/dev/block/bootdevice/by-name/reserve_b created"
fi

# Check if already exist the /dev/block/by-name/reserve_a symlink and create it
if [ -L /dev/block/by-name/reserve_a ];
then
    echo "/dev/block/by-name/reserve_a already exist"
else
    ln -s /data/reserve/reserve.img /dev/block/by-name/reserve_a
    echo "/dev/block/by-name/reserve_a created"
fi

# Check if already exist the /dev/block/by-name/reserve_b symlink and create it
if [ -L /dev/block/by-name/reserve_b ];
then
    echo "/dev/block/by-name/reserve_b already exist"
else
    ln -s /data/reserve/reserve.img /dev/block/by-name/reserve_b
    echo "/dev/block/by-name/reserve_b created"
fi

sleep 1s
done

exit 0
