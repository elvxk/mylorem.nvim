<!-- markdownlint-disable MD001 MD013 MD041 MD033 MD045 -->
<h3 align="center">
  <samp
    >&gt; <b>mylorem.nvim</b
    >
  </samp>
</h3>

<p align="center">
  <samp
    ><br />「 <b>mylorem.nvim</b> adalah plugin Neovim untuk menghasilkan teks <b>Lorem Ipsum</b> secara dinamis dengan dukungan berbagai snippet engine seperti <b>LuaSnip</b>, <b>UltiSnips</b>, dan <b>VSnip</b>. Plugin ini mempermudah pembuatan teks dummy saat coding, terutama bagi pengembang frontend, backend, atau dokumentasi.
 」
    <br />
  </samp>
</p>

<div align="center">
    <img src="https://img.shields.io/badge/lua-%232C2D72.svg?style=for-the-badge&logo=lua&logoColor=white"/>
    <img src="https://img.shields.io/badge/NeoVim-%2357A143.svg?&style=for-the-badge&logo=neovim&logoColor=white"/>
</div>
<br/>
<p align="center">
  <a href="#fitur">Fitur</a> •
  <a href="#instalasi">Instalasi</a> •
  <a href="#penggunaan">Penggunaan</a> •
  <a href="#penggunaan">Penggunaan</a> •
  <a href="#konfigurasi">Konfigurasi</a> •
  <a href="#kontribusi">Kontribusi</a> •
  <a href="#lisensi">Lisensi</a>
</p>

---

<br/>

## Fitur

- Generate **Lorem Ipsum** langsung di editor Neovim.
- Mendukung input dinamis seperti `lorem25` untuk menghasilkan 25 kata.
- Kompatibel dengan snippet engine populer:
  - **LuaSnip**
  - **UltiSnips**
  - **VSnip**
- Mudah dikonfigurasi dan diintegrasikan dengan berbagai distro Neovim.

<br/>

## Instalasi

#### Dengan LazyVim

- Jika Anda menggunakan [LazyVim](https://github.com/folke/lazy.nvim), tambahkan konfigurasi berikut ke file `plugins.lua` atau folder plugin Anda:

  ```lua
  return {
    "elvxk/mylorem.nvim",
    lazy = false,
    config = function()
      require("mylorem").setup({
        luasnip = true,    -- Aktifkan untuk LuaSnip
        ultisnips = false, -- Aktifkan untuk UltiSnips
        vsnip = false,     -- Aktifkan untuk VSnip
        default = true,    -- Gunakan LuaSnip secara default
      })
    end,
  }
  ```

#### Dengan Packer

- Tambahkan ke konfigurasi Packer Anda:

  ```lua
  use {
    "elvxk/mylorem.nvim",
    config = function()
      require("mylorem").setup({
        luasnip = true,
        ultisnips = false,
        vsnip = false,
        default = true,
      })
    end,
  }
  ```

#### Dengan Vim-Plug

- Tambahkan ke file `init.vim` atau `init.lua`:

  ```vim
  Plug 'elvxk/mylorem.nvim'

  lua << EOF
  require("mylorem").setup({
    luasnip = true,
    ultisnips = false,
    vsnip = false,
    default = true,
  })
  EOF
  ```

<br/>

## Penggunaan

- LuaSnip:
  - Ketik `lorem`, `lorem25`, atau `lorem100`, lalu gunakan mekanisme ekspansi LuaSnip.
- UltiSnips:
  - Ketik `lorem`, `lorem25`, atau `lorem100`, lalu tekan `<Tab>` untuk ekspansi.
- VSnip:
  - Ketik dan pilih snippet `lorem`, `lorem25`, atau `lorem100` dari daftar popup.

<br/>

## Konfigurasi

Plugin mendukung beberapa opsi konfigurasi yang dapat diatur dalam fungsi `setup`:

- `luasnip` (boolean): Aktifkan dukungan untuk LuaSnip. Default: `false`.
- `ultisnips` (boolean): Aktifkan dukungan untuk UltiSnips. Default: `false`.
- `vsnip` (boolean): Aktifkan dukungan untuk VSnip. Default: `false`.
- `default` (boolean): Gunakan LuaSnip secara default jika opsi lainnya tidak diaktifkan. Default: `true`.

Contoh konfigurasi:

```lua
require("mylorem").setup({
  luasnip = true,    -- Aktifkan LuaSnip
  ultisnips = false, -- Nonaktifkan UltiSnips
  vsnip = false,     -- Nonaktifkan VSnip
  default = true,    -- Gunakan LuaSnip jika yang lain tidak aktif
})
```

<br/>

## Kontribusi

Kontribusi sangat dihargai! Jika Anda menemukan bug atau ingin menambahkan fitur baru, silakan buat issue atau pull request di repositori GitHub ini.

<br/>

## Lisensi

Plugin ini dirilis di bawah lisensi MIT. Lihat file `LICENSE` untuk detail lebih lanjut.

<br/>
<br/>

---

<div align='center'>
<b>ELVXK</b>
<br/>
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
