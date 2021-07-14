# Dotfiles
@wmeng223 does dotfiles for Ubuntu and OS X

## Install
copy all dotfiles to `$HOME`

## Components

### Tmux

1. Use default prefix key

2. Automatically renumber the windows of a session after any window is closed

3. Large history message (200000 lines)

4. Modify window-status-format, easy to find current pane(`**` on both sides)

5. Status bar updates every 2s

### Inputrc

1. Ignore case and display a list of possible files for us

2. Search specific command use up&down button

### Xmodmap

On Ubuntu, use `gnome-session-properties` to add `xmodmap /home/$USER/.xmodmaprc` into autorun (use absolute path better)

Two keyboard configuration here:

1. Remove Caps_Lock and replace it with Control_L (default)

2. Swap Caps_Lock and Control_L 
