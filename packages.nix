{ pkgs, lib, ... }:

{
  home.packages = lib.attrValues ({
    # some basics
    inherit (pkgs)
      eza # fancy version of `ls`
      bat # fancy version of `cat`
      fd  # find
      fzf
      du-dust # fancy version of `du`
      ripgrep
      bottom  # like htop
      tealdeer
      nurl
      nil  # lsp nix
      # openssh
      zola # ssg
    ;
    # gui
    inherit (pkgs)
    #aseprite
    ;
    # fish plugins
    inherit (pkgs.fishPlugins)
      tide # fish prompt, run `tide configure` to open the wizard in terminal
      sponge # keeps your fish shell history clean from typo
      pisces # Paired symbols in the command line
      puffer # text expansions, use ... = ../.. and !! will expand to previous command , see https://github.com/nickeb96/puffer-fish
      fzf-fish # fzf_configure_bindings --help; more https://github.com/PatrickF1/fzf.fish
    ;
  });
}
