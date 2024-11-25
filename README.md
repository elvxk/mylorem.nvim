# mylorem.nvim

`mylorem.nvim` adalah plugin Neovim sederhana untuk menghasilkan teks Lorem Ipsum. Plugin ini mendukung integrasi dengan berbagai snippet engine seperti **LuaSnip**, dan memungkinkan Anda membuat snippet Lorem Ipsum dengan cepat berdasarkan jumlah kata yang diinginkan.

## Fitur

- Menyediakan snippet `lorem` untuk menghasilkan teks Lorem Ipsum default (50 kata).
- Mendukung trigger dinamis seperti `lorem25` untuk 25 kata, `lorem100` untuk 100 kata, dan lainnya.
- Kompatibel dengan berbagai snippet engine.
- Mudah digunakan dengan integrasi pengelola plugin seperti LazyVim, Packer, atau lainnya.

## Instalasi

### Dengan [LazyVim](https://github.com/folke/lazy.nvim)

Tambahkan plugin ini ke dalam konfigurasi LazyVim Anda:

```lua
return {
  "username/mylorem.nvim", -- Ganti 'username' dengan nama akun GitHub Anda
  lazy = false, -- Memuat plugin langsung
  config = function()
    require("mylorem").setup()
  end,
}
```
