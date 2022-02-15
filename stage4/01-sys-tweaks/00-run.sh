#!/bin/bash -e

on_chroot << EOF
	git clone --depth=1 https://github.com/RetroPie/RetroPie-Setup.git
	cd RetroPie-Setup
	export __platform="rpi3"
	SUDO_USER="${FIRST_USER_NAME}" ./retropie_setup.sh
EOF
