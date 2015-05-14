#!/bin/bash

if [ ! -d  /sys/class/gpio/export ];
then
  sudo sh -c "echo 508 > /sys/class/gpio/export"
  sudo sh -c "echo 'out' > /sys/class/gpio/gpio508/direction"
fi

sudo sh -c "echo '1' > /sys/class/gpio/gpio508/value"
