vim.pack.add { 'https://github.com/rmagatti/auto-session' }

require('auto-session').setup {
  post_restore_cmds = {
    function()
      for _, buf in ipairs(vim.api.nvim_list_bufs()) do
        if vim.api.nvim_buf_is_valid and vim.bo[buf].buflisted and vim.bo[buf].filetype ~= "" then
          local lang = vim.treesitter.language.get_lang(vim.bo[buf].filetype)
          if lang and vim.treesitter.language.add(lang) then
            pcall(vim.treesitter.start, buf, lang)
          end
        end
      end
    end,
  },
}

vim.keymap.set('n', '<leader>wr', '<cmd>AutoSession search<CR>', { desc = 'Session search' })
vim.keymap.set('n', '<leader>ws', '<cmd>AutoSession save<CR>', { desc = 'Save session' })
vim.keymap.set('n', '<leader>wa', '<cmd>AutoSession toggle<CR>', { desc = 'Toggle autosave' })
