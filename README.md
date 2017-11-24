# blackout
a short tutorial to shudown the display of a laptop, which runs ubuntu server 16.04 LTS 

1. install vbetool: "sudo apt-get vbetool"
2. create file /etc/sudoers.d/blackout: sudo visudo -f /etc/sudoers.d/blackout
3. edit /etc/sudoers.d/blackout: "<USERNAME> ALL=NOPASSWD:/usr/sbin/vbetool"
4. create script: "nano /script/blackout.sh":
    #!/bin/bash
    sudo vbetool dpms off
5. change rights of file: "chmod 755 /script/blackout.sh"
6. make file executable: "chmod +x /script/blackout.sh"
7. edit /etc/tc.local: "/home/<USERENAME>/script/blackout.sh"
