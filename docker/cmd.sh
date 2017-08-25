#!/bin/sh

[ -z "$1" ] && exit

IMAGE="${1%%\.def}.img"

singularity create "/shared/${IMAGE}"
singularity bootstrap "/shared/${IMAGE}" "/shared/$1"
