[ ! -d "./images" ] && mkdir ./images

docker build -t="space-docker" ./docker

docker run --privileged --rm \
  -v $PWD/shared:/shared \
  space-docker create /shared/hello_world.img

docker run --privileged --rm \
  -v $PWD/shared:/shared \
  space-docker bootstrap /shared/hello_world.img \
                         /shared/hello_world.def

## Incantation using `cmd.sh` CMD
# docker run --privileged --rm \
#   -v $PWD/shared:/shared \
#   space-docker hello_world.def
