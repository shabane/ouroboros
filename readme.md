# ouroboro

with this docker image file you can ssh to the container.

### parametrs

|User name|Password|SSH Port|
|:-------:|:------:|:------:|
|root|12341234|80|


### usage

1. build the image

```bash
git clone https://github.com/shabane/ouroboros.git && cd ouroboros
docker build . -t ouroboros
docker run -d ouroboros:latest
```

2. ssh to container

> before ssh you should get ip if the running container.

```bash
docker container inspect `docker ps | grep ouroboros | cut -f 1 -d ' '`
ssh root@<ip> -p 80
```