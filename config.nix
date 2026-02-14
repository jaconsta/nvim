{
  packageOverrides = pkgs: with pkgs; {
    myPackages = pkgs.buildEnv {
      name= "ja-apps";
      paths = [
        starship
        neovim
        fd
        lazygit
        ripgrep
        xsel
        mise
      ];
    };
  };
}
