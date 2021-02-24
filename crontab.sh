#!/bin/sh

# (u'原画', 'OG'),
# (u'蓝光', 'BD'),
# (u'超清', 'TD'),
# (u'高清', 'HD'),
# (u'流畅', 'SD')

# watchLive 直播链接 主播名
watchLive() {
	cd '/Volumes/My Passport/data/ut下载/99     直播/哔哩哔哩' || exit
	url="$1"
	name="$2"
	echo $url $name
	month=`date +"%Y-%m"`
	/usr/local/bin/ykdl --format=SD "$url" --output-dir "$name/$month" >> "./log/""$name"".log" &
	sleep 5
}


watchLive "https://live.bilibili.com/22528847" "尤奶学姐"
watchLive "https://live.bilibili.com/21753173" "搬砖小海绵"
watchLive "https://live.bilibili.com/8857387" "老实憨厚的苏宇"
watchLive "https://live.bilibili.com/22508500" "小妖晶软糖"
watchLive "https://live.bilibili.com/10556121" "丸子うの"
watchLive "https://live.bilibili.com/13328782" "圆圆小石头"
watchLive "https://live.bilibili.com/12607506" "夢冬oTo"
