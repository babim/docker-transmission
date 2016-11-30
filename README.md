[![](https://images.microbadger.com/badges/image/babim/transmission.svg)](https://microbadger.com/images/babim/transmission "Get your own image badge on microbadger.com")[![](https://images.microbadger.com/badges/version/babim/transmission.svg)](https://microbadger.com/images/babim/transmission "Get your own version badge on microbadger.com")

# docker-transmission
thanks mnhan32

Light weight trasmission docker based on alpine:latest

# Run
```
docker \
	run -d -p 9091:9091 \
	--name btServer \
	-v /serverSidePath/Completed:/data/download \
	-v /serverSidePath/Incomplete:/data/incomplete \
	-v /serverSidePath/Downloads/Torrents:/data/watch \
	-v /serverSidePath/.config:/data/config \
babim/transmission
```
