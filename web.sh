case "$(curl -s --max-time 2 -I https://www.baidu.com | sed 's/^[^ ]* *\([0-9]\).*/\1/; 1q')" in
	[23]) echo "http connection is up";;
	5) echo "The web proxy won't let us through";;
	*) echo "The network is down  or very slow";nmcli c up ouc-wire;python3 /home/kiswelrg/Projects/scripts/sendEmail.py;;
esac
