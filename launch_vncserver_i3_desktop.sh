#!/bin/bash 

. common.sh.include

cat << EOF > ${HOME}/.vnc/xstartup
#/bin/sh
# FIX C&P problems:
# REF: https://github.com/TigerVNC/tigervnc/issues/269
( sleep 5 ; vncconfig -nowin -poll 250 1>/tmp/vncconfig.log 2>&1 ) &
/usr/bin/i3  1>>${LOG} 2>&1
EOF

chmod a+x ${HOME}/.vnc/xstartup
vncserver ${TIGERVNC_SERVER_OPTS} 1>>${LOG} 2>&1 &
