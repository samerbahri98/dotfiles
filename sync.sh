#! /bin/sh

ln -s ~/.dotfiles/.ssh/config ~/.ssh

ln -s ~/.dotfiles/.pam_environment ~/

ln -s ~/.dotfiles/.gitconfig ~/

ln -s ~/.dotfiles/.npmrc ~/

ln -s ~/.dotfiles/.yarnrc ~/

ln -s ~/.dotfiles/.zshrc ~/

ln -s ~/.dotfiles/.bashrc ~/

ln -s ~/.dotfiles/.zprofile ~/

ln -s ~/.dotfiles/.zshenv ~/

ln -s ~/.dotfiles/.vscode ~/

ln -s ~/.dotfiles/.conda ~/

mkdir -p ~/.config/systemd/user/ && cp ./.config/systemd/user/ssh-agent.service ~/.config/systemd/user/

systemctl --user enable ssh-agent
systemctl --user start ssh-agent

