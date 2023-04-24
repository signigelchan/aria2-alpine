## An ease to use aria2 based alpine.

### Usage

```
docker run -d \
  --name aria2 \
  -p 6800:6800 \
  -e TZ="Asia/Shanghai" \
  -e UMASK=022 \
  -e SECRET=YOUR_RPC_TOKEN \
  -v YOUR_SAVE_DOWNLOAD_PATH:/downloads \
  -v aria2_data:/data \
  --restart=unless-stopped \
  signigelchan/aria2-alpine:latest
```

### With ``` Dockerfile ``` to build

```
docker buildx create \
  --name aria2builder \
  --driver docker-container

docker buildx use aria2builder

docker buildx build \
  --push \
  --platform linux/amd64,linux/arm64 \
  -t signigelchan/aria2-alpine:latest \
  -t signigelchan/aria2-alpine:v1.36.0 .
```

## THANKS

- [XUJINKAI/aria2-with-webui](https://www.github.com/XUJINKAI/aria2-with-webui)

- [P3TERX/aria2.conf](https://github.com/P3TERX/aria2.conf)

