#!/sbin/sh

setenforce 0
insmod /sbin/sec_touchscreen.ko
echo 1 > /sys/devices/virtual/sec/tsp/after_work
