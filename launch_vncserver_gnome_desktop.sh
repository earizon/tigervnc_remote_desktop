#!/bin/bash 

. common.sh.include

cat << EOF > ${HOME}/.vnc/xstartup
#!/bin/sh
#
#
( sleep 5 ; gnome-panel ) &
mutter # Window manager
EOF

chmod a+x ${HOME}/.vnc/xstartup
vncserver ${TIGERVNC_SERVER_OPTS} 1>>${LOG} 2>&1 &
