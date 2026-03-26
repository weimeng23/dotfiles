# Dotfiles

@weimeng23 does dotfiles for Ubuntu and OS X

## Table of contents

- [Dotfiles](#dotfiles)
  - [Table of contents](#table-of-contents)
  - [Install](#install)
  - [Components](#components)
    - [Ghostty](#ghostty)
    - [Starship](#starship)
    - [Neovim/Vim](#neovimvim)
    - [Tmux](#tmux)
    - [Inputrc](#inputrc)
    - [Xmodmap](#xmodmap)

<small><i><a href='http://ecotrust-canada.github.io/markdown-toc/'>Table of contents generated with markdown-toc</a></i></small>

## Install

copy all dotfiles to `$HOME`

```bash
git clone https://github.com/weimeng23/dotfiles.git
cd dotfiles
chmod +x install.sh && ./install.sh
```

## Components

### Ghostty

Ghostty config file in `~/.config/ghostty/config`.

Current defaults in `config.ghostty`:

1. Use `Maple Mono NF CN` with font size `14`

2. Enable `Catppuccin Mocha` theme with translucent background and blur

3. Use block cursor, disable cursor blink, and customize cursor color

4. Enable mouse copy on select and hide mouse while typing

5. Configure quick terminal to open at the top of the current screen and autohide

6. Enable zsh shell integration and increase scrollback limit

7. Add split-related shortcuts:

   - `cmd+d` create right split
   - `cmd+shift+enter` toggle split zoom
   - `cmd+shift+f` toggle split zoom

### Starship

Starship config file in `~/.config/starship.toml`.

This config is based on the official [Gruvbox Rainbow preset](https://starship.rs/presets/gruvbox-rainbow).

Compared with the official preset:

1. Add `add_newline = true` to keep an extra blank line before each prompt

2. Disable the `os` module, so the prompt does not show the system icon

Other modules and styles stay aligned with the upstream preset.

### Neovim/Vim

***No need to execute***

For `neovim`, install vim-plug (A minimalist Vim plugin manager.)

```bash
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

neovim config file in `~/.config/nvim/init.vim`. Plugins installed in `~/.config/nvim/plugged`.

For `vim`,

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

vim config file in `~/.vimrc`. Plugins installed in `~/.vim/plugged`.

### Tmux

1. Use default prefix key

2. Base index start from 1

3. Automatically renumber the windows of a session after any window is closed

4. Large history message (200000 lines)

5. Modify window-status-format, easy to find current pane(`**` on both sides)

6. Status bar updates every 2s

### Inputrc

1. Ignore case and display a list of possible files for us

2. Search specific command use up&down button

### Xmodmap

On Ubuntu, use `gnome-session-properties` to add `xmodmap /home/$USER/.xmodmaprc` into autorun (use absolute path better)

Two keyboard configuration here:

1. Remove Caps_Lock and replace it with Control_L (default)

2. Swap Caps_Lock and Control_L
