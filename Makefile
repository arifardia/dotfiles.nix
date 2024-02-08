.PHONY: install-nix enable-nix-flakes run-flake update-flake

install-nix:
	sh <(curl -L https://nixos.org/nix/install) --daemon

enable-nix-flakes:
	mkdir -p ~/.config/nix
	echo "experimental-features = nix-command flakes" >> ~/.config/nix/nix.conf
	sudo systemctl restart nix-daemon.service

run-flake:
	nix run . && home-manager switch

update-flake:
	nix flake update && home-manager switch

install-and-setup: install-nix enable-nix-flakes run-flake

update-environment: update-flake
