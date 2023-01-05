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

mkdir -p ~/.config/systemd/user/ 

ln -s ~/.dotfiles/.config/systemd/user/ssh-agent.service ~/.config/systemd/user/ssh-agent.service
ln -s ~/.dotfiles/.config/systemd/user/notes-sync.service ~/.config/systemd/user/notes-sync.service
ln -s ~/.dotfiles/.config/systemd/user/notes-sync.timer ~/.config/systemd/user/notes-sync.timer

ln -s ~/.dotfiles/.local/bin/sync_notes.sh ~/.local/bin/sync_notes.sh

systemctl --user enable ssh-agent
systemctl --user start ssh-agent
systemctl --user enable notes-sync.timer
systemctl --user start notes-sync.timer

