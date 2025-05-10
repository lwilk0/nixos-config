#! /run/current-system/sw/bin/zsh

git add * && 
sudo nix flake update &&
home-manager switch --flake . -b backup &&
sudo nixos-rebuild switch --flake . --impure &&
git commit -m "Update to config" &&
git push origin master
