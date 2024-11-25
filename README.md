<!-- markdownlint-disable MD013 -->

# mylorem.nvim

**mylorem.nvim** adalah plugin Neovim untuk menghasilkan teks **Lorem Ipsum** secara dinamis dengan dukungan berbagai snippet engine seperti **LuaSnip**, **UltiSnips**, dan **VSnip**. Plugin ini mempermudah pembuatan teks dummy saat coding, terutama bagi pengembang frontend, backend, atau dokumentasi.

## Fitur

- Generate **Lorem Ipsum** langsung di editor Neovim.
- Mendukung input dinamis seperti `lorem25` untuk menghasilkan 25 kata.
- Kompatibel dengan snippet engine populer:
  - **LuaSnip**
  - **UltiSnips**
  - **VSnip**
- Mudah dikonfigurasi dan diintegrasikan dengan berbagai distro Neovim.

## Instalasi

### Dengan LazyVim

Jika Anda menggunakan [LazyVim](https://github.com/folke/lazy.nvim), tambahkan konfigurasi berikut ke file `plugins.lua` atau folder plugin Anda:

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

### Dengan Packer

Tambahkan ke konfigurasi Packer Anda:

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

### Dengan Vim-Plug

Tambahkan ke file `init.vim` atau `init.lua`:

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

## Penggunaan

- LuaSnip:
  - Ketik `lorem`, `lorem25`, atau `lorem100`, lalu gunakan mekanisme ekspansi LuaSnip.
- UltiSnips:
  - Ketik `lorem`, `lorem25`, atau `lorem100`, lalu tekan `<Tab>` untuk ekspansi.
- VSnip:
  - Ketik dan pilih snippet `lorem`, `lorem25`, atau `lorem100` dari daftar popup.

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

## Kontribusi

Kontribusi sangat dihargai! Jika Anda menemukan bug atau ingin menambahkan fitur baru, silakan buat issue atau pull request di repositori GitHub ini.

## Lisensi

Plugin ini dirilis di bawah lisensi MIT. Lihat file `LICENSE` untuk detail lebih lanjut.
