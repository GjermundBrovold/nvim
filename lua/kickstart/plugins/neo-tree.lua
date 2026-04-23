-- Neo-tree is a Neovim plugin to browse the file systemneo
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '<leader>e', ':Neotree action=focus toggle=true<CR>', desc = 'NeoTree toggle', silent = true },
  },
  opts = {
    filesystem = {
      window = {
        position = 'right',
      },
    },
  },
}
