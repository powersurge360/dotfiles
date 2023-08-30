-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

lvim.format_on_save.enabled = true

-- For some reason solargraph doesn't play nicely
-- require('lspconfig').solargraph.setup {}

lvim.plugins = {
  "tpope/vim-surround",
  "catppuccin/nvim"
}

lvim.colorscheme = "catppuccin-mocha"
