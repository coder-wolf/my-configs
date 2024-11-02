## Holding space for my personal config files.

Here are what I'm storing here at the moment,
- Config files
    - Fish shell config
    - Zsh shell config
    - Vimrc, vim config
- Setup script
    - New mac setup script. (Personal config)


I'm basically using this repo as backup for my config files & scripts.

But, feel free to use any of these if you want.

-----

Quick setup ```.vimrc```:
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim &&

curl https://raw.githubusercontent.com/coder-wolf/unix-dotfiles/main/.vimrc -o ~/.vimrc
```

Neovim curr config: [nvChad](https://nvchad.com/)

```
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
```
