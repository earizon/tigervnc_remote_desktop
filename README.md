# INTRODUCTION
- This repo contains helpers scripts to launch a remote VNC server running a Linux desktop (i3 or GNOME "classic").

- The VNC server allows to run one (or more) X-servers that keeps the screen state in a RAM memory buffer.

- A VNC client can then connect to the remote VNC server and render the screen locally
  (using elaborated VNC compression algorithms to save network bandwith).

- The Desktop will persists its state when the client disconnects as long as the VNC server continues to run.
  (It's not unussual to keep it running for weeks/months).

- Depending on the screen resolution, bitmap depth, ... a network connection of 0.5Mb/sec will suffice for desktop or admin tasks.
- With a moderm fiber-optic connection video playback at 25fps can be possible 
  (WARN: Most probably palying video through a remote VNC desktop makes NO sense, I left it here just as reference of the VNC network protocol performance)

# PRE-SETUP

````sh
$ sudo dnf -y install i3 tigervnc-server
# TODO: APT/APK/... install
````

# MICRO-MANUAL

The launch*sh scripts can be used "as is" or as quick-references for more elaborate setups.

 The provided launch\*sh scripts arbitrarelly use the /etc/assigned_vncserver_ports.conf file to
map a VNC port to a different linux user. The assigned_vncserver_ports.conf follows the format
````
myLinuxUser1=<TCP_LISTENING_PORT1>
myLinuxUser2=<TCP_LISTENING_PORT2>
````

 The i3 desktop is the recomended window manager (quite ugly but extremely effective for
daily tasks).  Some conflicts will arise when accesing it remotely from Windows due to 
the overlap of key shortcuts in both i3 and Windows.
 The non-standard i3 shortcut `_home_.config_i3_config` (provided in this repository) fixes this issue.
Just copy and rename it to `$HOME/.config/i3/config`.

# External refs:
    - TigerVNC (http://TigerVNC.org) includes Xrandr extensions 
      for resizing the screen and some other goodies.
    - i3 (https://i3wm.org) tiling window manager. 
    
# CURRENT STATUS
- This project is in a "Works-for-me" status. Actually it will probably "work-for-you".
- Patches, feedback and beers are always welcome.

