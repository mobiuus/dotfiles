#!/bin/bash
echo "[LINK] tmux config"
ln -s ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf
echo "[INSTALL] tmux(apt)"
sudo apt install tmux -y
echo "[INSTALL] tpm(git)"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
echo "[INSTALL] tmux plugins(tpm)"
tinstall | fish
