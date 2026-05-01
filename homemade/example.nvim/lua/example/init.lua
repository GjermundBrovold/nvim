local M = {}

function M.setup(opts)
  opts = opts or {}

  vim.keymap.set('n', '<leader>å', function()
    if opts.name then
      print('Blank ' .. opts.name)
    else
      print 'Blanke Ark'
    end -- end if
  end) -- end function
end -- end function

return M
