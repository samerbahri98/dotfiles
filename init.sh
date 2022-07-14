#! /bin/sh

ln -s ~/.dotfiles/.ssh/config ~/.ssh

ln -s ~/.dotfiles/.pam_environment ~/

mkdir -p ~/.config/systemd/user/ && cp ./.config/systemd/user/ssh-agent.service ~/.config/systemd/user/

systemctl --user enable ssh-agent
systemctl --user start ssh-agent

