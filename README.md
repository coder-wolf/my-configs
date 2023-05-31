# My Unix/Linux dotfiles

I'm basically using this repo as backup for my dotfiles.

But, feel free to use any of these if you want.

-----
Neovim curr config: [nvChad](https://nvchad.com/)

```
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
```

Quick setup ```.vimrc```:
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim &&

curl https://raw.githubusercontent.com/coder-wolf/unix-dotfiles/main/.vimrc -o ~/.vimrc
```
