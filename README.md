# Neovim Personal Config
If you installing neovim in windows and using `choco`, then put nvim config in `Appdata/Local/nvim`

**Relaunch neovim after opening it for the first time**

List of 'external' dependecies to install :
- `git` for [packer.nvim](https://github.com/wbthomason/packer.nvim/tree/master)
- `fd` and `ripgrep` for [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- C compiler and `libstdc++` for [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter), if using [choco](https://chocolatey.org/install) just install [winlibs](https://community.chocolatey.org/packages/winlibs)
- `nodejs` for [coc.nvim](https://github.com/neoclide/coc.nvim/wiki/Install-coc.nvim)

Install all that in one command (choco) :
```
$ choco install git fd ripgrep winlibs nodejs -y
```

## Specific Language Support
Steps to setup nvim for specific language :
1. Install that language's parser for treesitter
either using this command `:TSinstall <language_to_install>` or change this settings `ensure_installed` in lua/plugin/treesitter.lua

2. Install lsp for that language, list of [lsp](https://langserver.org/)

3. Install coc extension that handle the lsp you installing. [List of coc extension](https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions#implemented-coc-extensions). Install coc extension using this command `:CocInstall coc-something`.
