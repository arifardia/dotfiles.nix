{pkgs, ...} :
{
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      function fish_greeting
      random choice "Hello!" "Hi" "Yo!" "Hii~"
      sh ~/tmp/random-hints.sh
      end
      '';
    plugins = [
      {
        name = "nix-env.fish";
        src = pkgs.fetchFromGitHub {
          owner = "arifardia";
          repo = "nix-env.fish";
          rev = "7b65bd228429e852c8fdfa07601159130a818cfa";
          hash = "sha256-RG/0rfhgq6aEKNZ0XwIqOaZ6K5S4+/Y5EEMnIdtfPhk=";
        };
      }
    ];
    shellAbbrs = {
      ehm = "hx ~/.config/home-manager/home.nix";
      uhm = "home-manager switch";
      lg="lazygit";
      q="exit";
      c="clear";
    };
    shellAliases = {
      l="eza --icons -stype";
      la="eza --icons -stype -a";
      lt="eza --icons -r -stype -T -L2";
      ll="eza --icons -l -H -G -stype --git";
      lla="eza --icons -l -H -G -stype --git -a";
    };
  };
}