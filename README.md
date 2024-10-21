# Neovim Configuration Introduce

If you want to use Neovim at 42, there are some installation issues you might encounter, but don't worry—solutions are available. Below is a step-by-step installation guide for new UbuntuOS.

## Start

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

## Plugins

Your Neovim experience greatly depends on your configuration, which is the primary focus of this guide. You can enhance your setup with various plugins. While you can add almost any plugin, there are some essentials we will cover in this guide.

- Fast and efficient development environment
- Integration of essential plugins
- Syntax highlighting and automatic closing

You can find the complete list of plugins [here]().

## Plugin & Manager Installation

As mentioned, there are some essential plugins that we will use for the default configuration in this guide.

1 - if you don't have `config/nvim` directory, create one.

2 - clone this repository's config file into:
```
git clone https://github.com/Etherfiend/NeovimConfigFor42/nvim tmp_nvim && \
mv tmp_nvim .var/app/io.neovim.nvim/config/nvim && rm -rf tmp_nvim
```


We'll use [Packer.nvim](https://github.com/wbthomason/packer.nvim) for managing plugins. While you can use other plugin managers (like Lazy.nvim), this guide focuses on Packer.nvim. As you know we have limited acces and can't reach sudo password. So you need to install Packer.nvim manually.

**packer.nvim**

1 - create a directory for packer
```
mkdir -p ~/.config/nvim/pack/packer/start/
```
2 - clone packer.nvim repository to your into that directory:
```
git clone https://github.com/wbthomason/packer.nvim.git \
    ~/.var/app/io.neovim.nvim/config/nvim/pack/packer/start/packer.nvim/lua/packer
```
3 - restart neovim and run `:PackerSync` to ensure it is installed.
4 - run `:checkhealth` to check the plugin status.

## Sources

- **wbthomason/packer.nvim**: [GitHub](https://github.com/wbthomason/packer.nvim) _- Plugin manager_
- **morhetz/gruvbox**: [GitHub](https://github.com/morhetz/gruvbox) _- Color theme_
- **nvim-tree/nvim-tree.lua**: [GitHub](https://github.com/nvim-tree/nvim-tree.lua) _- File explorer tree_
- **nvim-tree/nvim-web-devicons**: [GitHub](https://github.com/nvim-tree/nvim-web-devicons) _- File type icons_
- **neovim/nvim-lspconfig**: [GitHub](https://github.com/neovim/nvim-lspconfig) _- LSP configuration_
- **windwp/nvim-autopairs**: [GitHub](https://github.com/windwp/nvim-autopairs) _- Automatic closing of brackets and parentheses_
- **nvim-treesitter/nvim-treesitter**: [GitHub](https://github.com/nvim-treesitter/nvim-treesitter) _- Syntax highlighter_
- **nvim-lualine/lualine.nvim**: [GitHub](https://github.com/nvim-lualine/lualine.nvim) _- Status line_

For the complete list of features and functionalities of these plugins, please visit their GitHub repositories.

