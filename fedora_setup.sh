#!/bin/sh

set -e

mkdir -p ~/Development

sudo dnf install \
	tree \
	rake \
	cmake \
	clang \
    systemd-devel \
	python-pip

echo "Run 'rake install' to complete dotfiles install"

pip install twisted argparse service_identity
