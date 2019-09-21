#!/bin/bash

cd /data

if [ -d ./blog ]
then
  cd blog
  git pull origin master
else
  git clone https://github.com/AniketKul/ml-pipeline-to-k8s-with-argo.git
fi