-- Neo-tree is a Neovim plugin to browse the file systemneo
-- https://github.com/nvim-neo-tree/neo-tree.nvim

local plugins = {
  { src = 'https://github.com/nvim-neo-tree/neo-tree.nvim', version = vim.version.range '*' },
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/MunfiTanjim/nui.nvim',
}

if vim.g.have_nerd_font then
  table.insert(plugins, 'https://github.com/nvim-tree/nvim-web-devicons') -- not strictly reuired, but recommended
end

vim.pack.add(plugins)

vim.keymap.set('n', '<leader>e', ':Neotree action=focus toggle=true<CR>', { desc = 'NeoTree toggle', silent = true })

require('neo-tree').setup {
  opts = {
    filesystem = {
      window = {
        position = 'right',
      },
    },
  },
}
