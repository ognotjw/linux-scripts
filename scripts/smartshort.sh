#!/bin/bash

# set "diskletters" as the letters of the disks you want to have SMART ran on
# e.g. /dev/sdb through /dev/sde would be "b,c,d,e"

diskletters="b,c,d,e"

disks=($(echo "$diskletters" | tr ',' ' '))

for letter in "${disks[@]}"
do
  smartctl -t short /dev/sd$letter
done
