 Helpers scripts to launch a remote VNC server running a Linux desktop (gnome / i3).

 The VNC server allows to run an X-server that keeps the screen state in a RAM memory buffer.

 A VNC client can then connect to the remote VNC server and render the screen locally
(using elaborated VNC compression algorithms to save network bandwith)

 Depending on the screen resolution, bitmap depth, ... a network connection of 1Mb/sec 
will suffice for desktop or admin tasks.
  With a moderm fiber-optic connection video playback at 25fps can be possible 
(WARN: 99'9% of the times video playback in a remote VNC desktop
 makes NO sense, but I left it here just as reference of the VNC network 
 protocol performance)

 The launch*sh scripts can be used "as is" or as quick-references for more elaborate setups.

 The provided launch*sh scripts arbitrarelly use the /etc/assigned_vncserver_ports.conf file to
map a VNC port to a different user. 

 The i3 desktop is the recomended window manager (quite ugly but extremely effective for
daily tasks).  Some conflicts will arise when accesing it remotely from Windows due to 
the overlap of key shortcuts in both i3 and Windows.
 The non-standard i3 shortcut layout in `_home_.config_i3_config` fixes this issue.
Just copy and rename it to `$HOME/.config/i3/config`.


 External refs:
    - TigerVNC (http://TigerVNC.org) includes Xrandr extensions 
      for resizing the screen and some other goodies.
    - i3 (https://i3wm.org) tiling window manager. 

