# Nvim setup and configuration

**NVIM** v0.11.6 <br/>
**LuaJIT** 2.1.0-beta3

Run `:checkhealth` for more info

## OS requirements

  - A nice terminal

I am currently using Alacritty

Copy / paste 

OSx (`pbcopy`)-> do nothing <br />
Ubuntu (`xsel`) -> `sudo apt-get install xsel`

Install __nerd fonts__ for icons

OSx

```sh
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
# Change Terminal font to Hack Nerd Font
```

Other fonts.
`https://www.nerdfonts.com/cheat-sheet`

Install riprep for faster greps <br />
Install instructions: https://github.com/BurntSushi/ripgrep
```sh
# -Linux - (X11) 
sudo apt install ripgrep
# -- (Wayland) 
sudo apt install wl-clipboard
# -Mac 
brew install ripgrep
```

### This repo expected location

```sh
cd ~/.config
git clone https://github.com/jaconsta/nvim
cd nvim
```

### LSP Packages

General info on installing language servers.<br />
Docs: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md

  - Python: `pip install basedpyright`
  - Docker: `npm install -g dockerfile-language-server-nodejs`
  - Typescript/HTML/CSS/JSON/ESLint: `npm i -g vscode-langservers-extracted`
  - GraphQL: `npm install -g graphql-language-service-cli`
  - Markdown: Via LSPInstaller

### Quick re load of configuration 

Source the lua content.

`:so %`
