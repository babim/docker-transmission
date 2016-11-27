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
