CS() {
	sshfs root@192.168.2.102:/ /home/bro/桌面/3.27
}

labelImage() {
	docker run -it --network host --user $(id -u) -e DISPLAY=unix$DISPLAY --workdir=/root --volume=/home/bro/Local_install/Apps/labelImg-master/:/root --volume="/home/$USER:/home/$USER" --volume="/etc/group:/etc/group:ro" --volume="/etc/passwd:/etc/passwd:ro" --volume="/etc/shadow:/etc/shadow:ro" --volume="/etc/sudoers.d:/etc/sudoers.d:ro" -v /tmp/.X11-unix:/tmp/.X11-unix labelimage python2 labelImg.py
}

crop_video(){
	(($# != 3)) && {
		echo "Usage: crop_video video_name time_spot Output_pic.name"
		echo "eg: crop_video end_esp.mp4 00:00:01 picture.jpg"
		return
	}
	target="$1"
	start_time="$2"
	save_name="$3"
	ffmpeg -i $target \
		   -f image2 \
		   -ss $start_time \
		   -vframes 1 \
		   -q:v 2 \
		   $save_name
}

crop_fragment(){
	(($# != 4)) && {
		echo "Usage: crop_fragment video_name time_spot duration Output_pic.name"
		echo "eg: crop_video end_esp.mp4 00:02:01 00:03:01[-:表示从起始点一直到最后] picture.jpg"
		return
	}
	target="$1"
	start_time="$2"
	duration="$3"
	save_name="$4"

	#痛痛的教训：等号两边要留有空格，否则比较结果不确定.
	[[ $duration = - ]] && {
	ffmpeg -ss $start_time -accurate_seek \
		   -i $target \
		   -codec copy \
		   -avoid_negative_ts 1 \
		   $save_name
	} || {
	ffmpeg -ss $start_time -t $duration \
		   -accurate_seek \
		   -i $target \
		   -codec copy \
		   -avoid_negative_ts 1 \
		   $save_name
	}
}
	














