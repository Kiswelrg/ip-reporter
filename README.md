## Ip-Reporter
Email you if your linux pc's ip address changes.

### Motive
Couldn't afford some cloud drive, so instead I use my pc(intel i3 without a dedicated gpu👍) from the lab.  
This project helps me when I want to log in to my pc located at the lab when I'm at my dorm. Since our school internet condition is unstable, my pc's ip address changes frequently, this is the only workaround that works for me.  

### Usage
1. run start.sh and start_checkip.sh after changing file dirs in scripts.  
2. replace 'YourPPPoeName' with yours after command nmcli c up, it is the network connections stored&created in NetworkManager, I created mine via opening nm-connection-editor.

### Platform
linux
