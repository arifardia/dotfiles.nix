{ config, ... }:

{
  home = {
    username = "wiz";
    homeDirectory = "/home/wiz";
    stateVersion = "23.11"; # Please read the comment before changing.

    file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
    "~/.config/kitty/kitty.conf".source = ./kitty.conf;
    };

    sessionVariables = {
    # EDITOR = "emacs";
    };
  };

  programs.home-manager.enable = true;

  imports = [ ./packages.nix ./programs.nix ./helix.nix ./fish.nix ];
}
