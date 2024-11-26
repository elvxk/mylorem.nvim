<!-- markdownlint-disable MD001 MD013 MD041 MD033 MD045 -->
<h3 align="center">
  <samp
    >&gt; <b>mylorem.nvim</b
    >
  </samp>
</h3>

<p align="center">
  <samp
    ><br />「 <b>mylorem.nvim</b> is a Neovim plugin for dynamically generating <b>Lorem Ipsum</b> text with support for various snippet engines such as <b>LuaSnip</b>, <b>UltiSnips</b>, and <b>VSnip</b>. This plugin simplifies the creation of dummy text while coding, especially for frontend, backend, or documentation developers. 」
    <br />
  </samp>
</p>

<div align="center">
    <img src="https://img.shields.io/badge/lua-%232C2D72.svg?style=for-the-badge&logo=lua&logoColor=white"/>
    <img src="https://img.shields.io/badge/NeoVim-%2357A143.svg?&style=for-the-badge&logo=neovim&logoColor=white"/>
</div>
<br/>
<p align="center">
  <a href="#features-🌟">Features</a> •
  <a href="#installation-📝">Installation</a> •
  <a href="#usage-⚙️">Usage</a> •
  <a href="#configuration-⚙️">Configuration</a> •
  <a href="#contribution-🤝">Contribution</a> •
  <a href="#license-📜">License</a>
</p>

---

<br/>

## Features 🌟

- Generate **Lorem Ipsum** directly in the Neovim editor. ✨
- Supports dynamic input such as `lorem25` to generate 25 words. 🔢
- Compatible with popular snippet engines:
  - **LuaSnip** ⚡
  - **UltiSnips** 🔧
  - **VSnip** 🎯
- Easy to configure and integrate with various Neovim distributions. 🛠️

<br/>

## Installation 📝

#### LazyVim

- If you are using [LazyVim](https://github.com/folke/lazy.nvim), add the following configuration to your `plugins.lua` file or your plugin folder:

  ```lua
  return {
  "elvxk/mylorem.nvim",
  lazy = false,
  config = function()
    require("mylorem").setup({
      luasnip = true,    -- Enable for LuaSnip
      ultisnips = false, -- Enable for UltiSnips
      vsnip = false,     -- Enable for VSnip
      default = true,    -- Use LuaSnip by default
    })
  end,
  }
  ```

#### Packer

- Add to your Packer configuration:

  ```lua
  use {
    "elvxk/mylorem.nvim",
    config = function()
      require("mylorem").setup({
        luasnip = true,    -- Enable for LuaSnip
        ultisnips = false, -- Enable for UltiSnips
        vsnip = false,     -- Enable for VSnip
        default = true,    -- Use LuaSnip by default
      })
    end,
  }
  ```

#### Vim-Plug

- Add to your `init.vim` or `init.lua` file:

  ```lua
  Plug 'elvxk/mylorem.nvim'

  lua << EOF
  require("mylorem").setup({
    luasnip = true,    -- Enable for LuaSnip
    ultisnips = false, -- Enable for UltiSnips
    vsnip = false,     -- Enable for VSnip
    default = true,    -- Use LuaSnip by default
  })
  EOF
  ```

<br/>

## Usage ⚙️

- **LuaSnip**:
  - Type `lorem`, `lorem25`, or `lorem100`, then use LuaSnip's expansion mechanism. 🚀
- **UltiSnips**:
  - Type `lorem`, `lorem25`, or `lorem100`, then press `<Tab>` to expand. ⌨️
- **VSnip**:
  - Type and select the `lorem`, `lorem25`, or `lorem100` snippet from the popup list. 🎯

<br/>

## Configuration ⚙️

The plugin supports several configuration options that can be set in the `setup` function:

- `luasnip` (boolean): Enable support for LuaSnip. Default: `false`.
- `ultisnips` (boolean): Enable support for UltiSnips. Default: `false`.
- `vsnip` (boolean): Enable support for VSnip. Default: `false`.
- `default` (boolean): Use LuaSnip by default if other options are not enabled. Default: `true`.

Example configuration:

```lua
require("mylorem").setup({
  luasnip = true,    -- Enable LuaSnip
  ultisnips = false, -- Disable UltiSnips
  vsnip = false,     -- Disable VSnip
  default = true,    -- Use LuaSnip if others are not active
})
```

<br/>

## Contribution 🤝

Contributions are greatly appreciated! If you find a bug or would like to add a new feature, please create an issue or pull request on this GitHub repository.🐛🚀

<br/>

## License 📜

This plugin is released under the MIT license. See the `LICENSE` file for more details.

<br/>

---

<div align='center'>
<b>ELVXK</b>
<br/>
<a href="https://github.com/elvxk" target="_blank"><samp>Github</samp></a>
&nbsp;&middot;&nbsp;
<a href="https://github.com/elvxk" target="_blank"><samp>Instagram</samp> </a>
&nbsp;&middot;&nbsp;
<a href="https://www.linkedin.com/in/elvxk/" target="_blank"><samp>Linkedin</samp></a>
&nbsp;&middot;&nbsp;
<a href="https://dribbble.com/elvxk" target="_blank"><samp>Dribbble</samp></a>
<br/>
<a href="https://sandri.my.id" target="_blank"><samp>www.sandri.my.id</samp></a>
</div>
