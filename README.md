# TinyVim
- Minimal Neovim config meant to be a starting point for new neovim users.

![2023-09-26-133901_2560x1440_scrot](https://github.com/NvChad/tinyvim/assets/59060246/ce143ca2-07f1-4d54-971d-0f8304c50b58)

# Install
- Linux
```bash
git clone https://github.com/NvChad/tinyvim ~/.config/nvim && nvim
```

- Windows
```bash
git clone https://github.com/NvChad/tinyvim $HOME\AppData\Local\nvim --depth 1 && nvim
```

# About
- Dont expect this config to be beautiful or blazing fast (no hardcore lazyloading is done)! 
- I'm just using some plugins with their default configs
- This config only uses only lesser plugins which I think are important for any config.

# Important Plugins used
Below is the list of some very important plugins which I think should be must for any neovim config.

| Name             | Description                                  |
|-------------------------|----------------------------------------------|
| nvim-tree.lua           | File tree                                    |
| Nvim-web-devicons       | Icons provider                               |
| nvim-treesitter         | Configure treesitter                         |
| bufferline.nvim         | Tab + bufferline plugin                      |
| nvim-cmp                | Autocompletion                               |
| Luasnip & friendly snippets               | Snippets                                      |
| mason.nvim              | Download binaries of various lsps, formatters, debuggers, etc. |
| gitsigns.nvim                | Git-related features                         |
| comment.nvim            | Commenting                                   |
| telescope.nvim          | Fuzzy finder                                 |
| conform.nvim            | Formatter                                    |
