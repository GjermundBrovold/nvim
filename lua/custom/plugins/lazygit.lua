-- LazyGit in Neovim

vim.pack.add {
  'https://github.com/kdheepak/lazygit.nvim',
  'https://github.com/nvim-lua/plenary.nvim',
}

require('telescope').load_extension('lazygit')

vim.keymap.set('n', '<leader>lg', '<cmd>LazyGit<cr>', {desc = '[L]azy[G]it' } )
