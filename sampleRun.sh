#!/bin/bash
/usr/bin/docker \
	run -d -p 9091:9091 \
	--name btServer \
	-v /serverSidePath/Completed:/transmission/download \
	-v /serverSidePath/Incomplete:/transmission/incomplete \
	-v /serverSidePath/Downloads/Torrents:/transmission/watch \
	-v /serverSidePath/.config:/transmission/config \
	mnhan32/transmission:1.0
