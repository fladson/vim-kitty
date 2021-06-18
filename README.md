# vim-kitty - kitty config syntax highlighting for vim

Syntax highlighting for Kitty terminal config files.

Keywords based on v0.21.1

## File type detection

For now, the automatic detection will only work for files named `kitty.conf`.
You can always add `# vim:ft=kitty` at the beginning of any file to make sure
the syntax is loaded, or you can set it temporarily with `:set ft=kitty`.

## Installation instructions

### vim-plug

```vim
Plug 'fladson/vim-kitty'
```

### Manual

Just clone the repo and copy the files to the proper folders.

```sh
# for nvim
git clone https://github.com/fladson/vim-kitty.git /tmp/vim-kitty
mkdir -p ~/.config/nvim/syntax
mkdir -p ~/.config/nvim/ftdetect
mkdir -p ~/.config/nvim/ftplugin
mv /tmp/vim-kitty/syntax/kitty.vim ~/.config/nvim/syntax
mv /tmp/vim-kitty/ftdetect/kitty.vim ~/.config/nvim/ftdetect
mv /tmp/vim-kitty/ftplugin/kitty.vim ~/.config/nvim/ftplugin
rm -rf /tmp/vim-kitty
```
