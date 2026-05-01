print 'plant working'

local plant_states = { '🪏', '🌱', '🪴', '🌿', '🌳' }

local buf = vim.api.nvim_create_buf(false, true)

local win_config = {
  relative = 'editor',
  width = 2,
  height = 1,
  row = math.floor(vim.o.lines / 2),
  col = math.floor(vim.o.columns / 2),
  style = 'minimal',
  border = 'rounded',
}

-- vim.api.nvim_buf_set_lines(buf, 0, -1, false, { plant_states[index] })

-- vim.api.nvim_open_win(buf, false, win_config)


return {}
