## NeoVIM Configuration

### Commands

| Cmd          | Description                            |
| ------------ | -------------------------------------- |
| <leader-d-d> | show diag window, also enter window x2 |

### Code Creation

```bash
touch README.md
README.md
mkdir lua
touch lua/base.lua
touch lua/keymaps.lua
touch lua/plugins.lua
```

Then installed and configures the plugins in the following order.

- which-key
- telescope - file finder, greper, browser
- tokoyonight - color scheme

- lspconfig, nvim-cmp, cmp-nvim-lsp
- mason, mason-lspconfig
- luasnip, cmp_luasnip, friendly-snippets
- lualine, bufferline, telescope-tabs, nvim-autopairs, nvim-colorizer
- toggleterm, gitsign, clipboar copy config
- treesitter, auto tags, format on save

After installing tree sitter make sure to run `:TSUpdate` because
you get errors until that is run.

### Code Histroy

The code in this repository is based on the
[Setup nvim-lspconfig + nvim-cmp](https://vonheikemen.github.io/devlog/tools/setup-nvim-lspconfig-plus-nvim-cmp/)
article.
