#!/usr/bin/env bash

mkdir -p temp/

git clone git@gitlab.com:bztsrc/model3d.git temp/m3d
cp temp/m3d/m3d.h ./m3d.h
