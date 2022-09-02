#!/bin/bash

#Replace with the path to your dataset
DATASET_PATH="PATH/TO/YOUR/DATASET/FOLDER"

# Script that generates "train.txt" file for darknet training from custom dataset
# First, list all images on "train_traffic" with their absolute path
# Save the result on a file:
ls -I define_train.sh -d $PWD/* >> train.txt

# Remove the absolute path, leaving only path relative to darknet folder:
sed -i "s#$DATASET_PATH#data/obj/#" train.txt
sed -i "s#data/obj/define_train.sh##" train.txt
