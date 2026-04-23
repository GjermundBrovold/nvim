return {
  'lervag/vimtex',
  lazy = false,
  -- tag = "" - uncomment for version
  init = function()
    vim.g.vimtex_view_method = 'skim' -- set pdf viewer
  end,
}
