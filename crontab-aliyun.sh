#!/bin/sh

# (u'原画', 'OG'),
# (u'蓝光', 'BD'),
# (u'超清', 'TD'),
# (u'高清', 'HD'),
# (u'流畅', 'SD')

# watchLive 直播链接 主播名
watchLive() {
	cd '/root/bili' || exit
	url="$1"
	name="$2"
	echo $url $name
	month=`date +"%Y-%m"`
	/usr/local/python3/bin/ykdl --format=SD "$url" --output-dir "$name/$month" >> "./log/""$name"".log" &
	sleep 5
}


watchLive "https://live.bilibili.com/22528847" "尤奶学姐"
watchLive "https://live.bilibili.com/21753173" "搬砖小海绵"
watchLive "https://live.bilibili.com/8857387" "老实憨厚的苏宇"
watchLive "https://live.bilibili.com/22508500" "小妖晶软糖"
watchLive "https://live.bilibili.com/10556121" "丸子うの"
watchLive "https://live.bilibili.com/13328782" "圆圆小石头"
watchLive "https://live.bilibili.com/12607506" "夢冬oTo"

# 安装 FFmpeg 
# [如何在 CentOS 7 上安装和使用 FFmpeg](https://www.myfreax.com/how-to-install-ffmpeg-on-centos-7/)

# crontab -l

# # 晚上 10 点半开启 asmr 录制
# 30 22 * * * /root/ykdl/crontab-aliyun.sh
# # 凌晨 2 点关闭 asmr 录制
# 0 2 * * * pkill -f ykdl; pkill ffmpeg; pkill -f bili

