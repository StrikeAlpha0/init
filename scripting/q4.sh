k="sum"
sum="md5sum /etc/crontab | awk '{print $1}'"
read -r line<$k
if [$line != $sum]
then
	echo "$sum" | mail -s "crontab modified" root
fi
echo "$sum">sum
