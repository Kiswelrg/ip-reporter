case "$(curl -s --max-time 2 -I https://www.google.com | sed 's/^[^ ]* *\([0-9]\).*/\1/; 1q')" in
	[23]) echo "http connection is up";;
	5) echo "The web proxy won't let us through";;
	*) echo "The network is down  or very slow";nmcli c up YourPPPoeName;python3 /YourFilePath/sendEmail.py;;
esac
