# Neovim Configuration Guide For 42

⚠️ This is a work in progress, some features may be unstable or incomplete.

If you want to use Neovim at 42, there are some installation issues you might encounter, but don't worry—solutions are available. Below is a step-by-step Neovim configuration guide for 42's new Ubuntu system.

## Preview 
<img src="https://i.imgur.com/XvQddx6.png" alt="first" width="auto" height="auto"> 

## Getting Started

First download Neovim from 42 Package Manager. When it downloaded you may notice that nvim command doesn't respond. 

**setting up `.bashrc` or `.zshrc`**:

zsh
```bash
echo "alias vim='flatpak run io.neovim.nvim'" >> ~/.zshrc && source ~/.zshrc
```
bash
```zsh
echo "alias vim='flatpak run io.neovim.nvim'" >> ~/.bashrc && source ~/.bashrc
```

## Plugin & Manager Installation

There are some essential plugins that we will use for the default configuration in this guide.

⚠️These plugins and manager require at least free 1.1GB space⚠️

**plugins**

<img src="https://i.imgur.com/mHPGTAS.png" alt="first" width="300" height="auto"> 

- clone this repository into:
```
git clone https://github.com/Etherfiend/NeovimConfigFor42.git \
    ~/.var/app/io.neovim.nvim/config/nvim
```

You can also modify setup or init file/files according to your needs. Plugins are essential parts of your neovim experience, feel free to configure them; they won't bite.

We'll use [Packer.nvim](https://github.com/wbthomason/packer.nvim/tree/master) for managing plugins. While you can use other plugin managers (like Lazy.nvim), this guide focuses on Packer.nvim. As you know we have limited acces and can't reach sudo password. So you need to install Packer.nvim manually.As mentioned, 

**packer.nvim**

- create a directory for packer
```
mkdir -p ~/.config/nvim/pack/packer/start/
```
- clone packer.nvim repository to your into that directory:
```
git clone https://github.com/wbthomason/packer.nvim.git \
    ~/.var/app/io.neovim.nvim/config/nvim/pack/packer/start/packer.nvim/lua/packer
```


## Common Issues

### livegrep
Telescope uses ripgrep(or its alternative) for live_grep function that allows you search/find proccesses within files. You need to install [ripgrep](https://github.com/BurntSushi/ripgrep) to your system to use this feature.
- move the executable to `home/your-username/bin`
- modify related line in init.lua as follows:
```
vim.env.PATH = "/home/your-username/bin:" .. vim.env.PATH
```

### nvim.tree icons
After installing nvim-tree, you may notice that the file tree doesn't display icons properly at first. To fix this, you need to install a [NerdFont](https://www.nerdfonts.com/). However, you can also customize and set your own symbols/characters for the file tree if you prefer.

## Notes

- If you want to improve your editor experience beyond the default setup in this guide, you need to understand what Mason and Packer.nvim are, and how they work. Visit their GitHub pages for more information and detailed usage instructions. 

## Sources

- **wbthomason/packer.nvim**: [GitHub](https://github.com/wbthomason/packer.nvim) _- Plugin manager_
- **rebelot/kanagawa.nvim**: [GitHub](https://github.com/rebelot/kanagawa.nvim) _- Color theme_
- **kyazdani42/nvim-tree.lua**: [GitHub](https://github.com/kyazdani42/nvim-tree.lua) _- File explorer tree_
- **kyazdani42/nvim-web-devicons**: [GitHub](https://github.com/kyazdani42/nvim-web-devicons) _- File type icons_
- **nvim-lualine/lualine.nvim**: [GitHub](https://github.com/nvim-lualine/lualine.nvim) _- Status line_
- **nvim-treesitter/nvim-treesitter**: [GitHub](https://github.com/nvim-treesitter/nvim-treesitter) _- Syntax highlighter_
- **windwp/nvim-autopairs**: [GitHub](https://github.com/windwp/nvim-autopairs) _- Automatic closing of brackets and parentheses_
- **neovim/nvim-lspconfig**: [GitHub](https://github.com/neovim/nvim-lspconfig) _- LSP configuration_
- **hrsh7th/nvim-cmp**: [GitHub](https://github.com/hrsh7th/nvim-cmp) _- Completion plugin_
- **hrsh7th/cmp-buffer**: [GitHub](https://github.com/hrsh7th/cmp-buffer) _- Buffer completion source for nvim-cmp_
- **hrsh7th/cmp-nvim-lsp**: [GitHub](https://github.com/hrsh7th/cmp-nvim-lsp) _- LSP source for nvim-cmp_
- **quangnguyen30192/cmp-nvim-ultisnips**: [GitHub](https://github.com/quangnguyen30192/cmp-nvim-ultisnips) _- UltiSnips source for nvim-cmp_
- **hrsh7th/cmp-nvim-lua**: [GitHub](https://github.com/hrsh7th/cmp-nvim-lua) _- Lua source for nvim-cmp_
- **octaltree/cmp-look**: [GitHub](https://github.com/octaltree/cmp-look) _- Look-up source for nvim-cmp_
- **hrsh7th/cmp-path**: [GitHub](https://github.com/hrsh7th/cmp-path) _- Path completion source for nvim-cmp_
- **hrsh7th/cmp-calc**: [GitHub](https://github.com/hrsh7th/cmp-calc) _- Calculator source for nvim-cmp_
- **f3fora/cmp-spell**: [GitHub](https://github.com/f3fora/cmp-spell) _- Spell completion source for nvim-cmp_
- **hrsh7th/cmp-emoji**: [GitHub](https://github.com/hrsh7th/cmp-emoji) _- Emoji completion source for nvim-cmp_
- **tzachar/cmp-tabnine**: [GitHub](https://github.com/tzachar/cmp-tabnine) _- AI-based code completion for nvim-cmp_
- **hrsh7th/vim-vsnip**: [GitHub](https://github.com/hrsh7th/vim-vsnip) _- Snippet plugin_
- **hrsh7th/vim-vsnip-integ**: [GitHub](https://github.com/hrsh7th/vim-vsnip-integ) _- Integration with nvim-cmp_
- **romgrk/barbar.nvim**: [GitHub](https://github.com/romgrk/barbar.nvim) _- Tabline plugin_
- **akinsho/bufferline.nvim**: [GitHub](https://github.com/akinsho/bufferline.nvim) _- Bufferline plugin_
- **nvim-telescope/telescope.nvim**: [GitHub](https://github.com/nvim-telescope/telescope.nvim) _- Fuzzy finder plugin_
- **nvim-lua/plenary.nvim**: [GitHub](https://github.com/nvim-lua/plenary.nvim) _- Lua functions used by many Neovim plugins_
- **Diogo-ss/42-header.nvim**: [GitHub](https://github.com/Diogo-ss/42-header.nvim) _- Add 42 header to C files_
- **hardyrafael17/norminette42.nvim**: [GitHub](https://github.com/hardyrafael17/norminette42.nvim) _- Norminette plugin for 42 coding standard checks_

For the complete list of features and functionalities of these plugins, please visit their GitHub repositories.

