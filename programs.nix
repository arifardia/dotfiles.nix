{ pkgs, ... }:

{
  programs.zoxide = {
    enable = true;
    enableFishIntegration = true;
  };

  programs.git = {
    enable = true;
    userName = "arifardia";
    userEmail = "arifard49@gmail.com";

    delta.enable = true;
    delta.options.features = "side-by-side line-numbers";
  };
}
