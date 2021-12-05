#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

function doIt() {
	rsync --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude ".osx" \
		--exclude "brew.sh" \
		--exclude "bootstrap.sh" \
		--exclude "README.md" \
		-avh --no-perms . ~;
	source ~/.zshrc;
}

if [ "$*" = "--force" ] || [ "$*" = "-f" ]; then
	doIt;
else
	read "$continue?This may overwrite existing files in your home directory. Are you sure? (y/n)";
	echo "";
	if [[ "$continue" =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;
