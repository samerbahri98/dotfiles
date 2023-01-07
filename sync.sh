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

for FILE in ~/.dotfiles/.config/systemd/user/*;
    do ln -s $FILE ~/.config/systemd/user/$(basename $FILE);
    done

ln -s ~/.dotfiles/.local/bin/sync_to_git.sh ~/.local/bin/sync_to_git.sh

systemctl --user enable ssh-agent
systemctl --user start ssh-agent
systemctl --user enable sync-to-git.timer
systemctl --user start sync-to-git.timer

