#! /run/current-system/sw/bin/zsh

cd ~/.dotfiles &&
sudo nix flake update &&
home-manager switch --flake . &&
sudo nixos-rebuild switch --flake . --impure &&
git add * &&
git commit -m "Update to config" &&
git push origin master &&
