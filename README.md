## An ease to use aria2 based alpine.

### Usage

```
docker run -d \
  --name aria2 \
  -p 6800:6800 \
  -e SECRET=YOUR_RPC_TOKEN \
  -v YOUR_SAVE_DOWNLOAD_PATH:/downloads \
  -v aria2_data:/data \
  --restart=unless-stopped \
  signigelchan/aria2-alpine:latest
```

### With ``` Dockerfile ``` to build

```
docker build \
  -t signigelchan/aria2-alpine:latest \
  -t signigelchan/aria2-alpine:v1.36.0 .
```

## THANKS

- [XUJINKAI/aria2-with-webui](https://www.github.com/XUJINKAI/aria2-with-webui)

- [P3TERX/aria2.conf](https://github.com/P3TERX/aria2.conf)

