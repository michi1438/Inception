#!/bin/sh

cp -r /usr/share/novnc /etc/data/novnc
echo $VNC_PW | vncpasswd -f > .vnc/passwd
vncserver -localhost no -geometry 1024x768 -SecurityTypes VncAuth -passwd /.vnc/passwd :0
websockify --web /etc/data/novnc/ 6080 localhost:5900
