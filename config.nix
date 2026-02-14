{
  packageOverrides = pkgs: with pkgs; {
    myPackages = pkgs.buildEnv {
      make = "ja-apps";
      paths = [
        starship
        neovim
        fd
        lazygit
        ripgrep
        mise
      ]
    }
  }
}
