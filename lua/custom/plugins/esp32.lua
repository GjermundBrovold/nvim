-- Add esp32 IDE Support to nvim.
vim.pack.add {
  'https://github.com/folke/snacks.nvim',
  'https://github.com/Aietes/esp32.nvim',
}

require('snacks').setup()

local esp32 = require('esp32')
esp32.setup()

local function find_esp_clangd()
  local base = vim.fn.expand('~/.espressif/tools/esp-clangd/')

  local entires = vim.fn.glob(base .. 'esp-*/esp-clangd/bin/clangd', false, true)

  table.sort(entires)

  return entires[#entires]
end

local esp_clangd = find_esp_clangd()

if esp_clangd and vim.fn.executable(esp_clangd) == 1 then
  esp32.find_esp_clangd = function()
    return esp_clangd
  end
else
  vim.notify('ESP32: Could not find Espressif clangd',
    vim.log.levels.ERROR
  )
end

vim.lsp.config('clangd', require('esp32').lsp_config())
vim.lsp.enable 'clangd'

vim.keymap.set("n", "<leader>Rb", require("esp32").build, {
  desc = "ESP32: Build",
})

vim.keymap.set("n", "<leader>Rf", function()
  require("esp32").pick("flash")
end, {
  desc = "ESP32: Pick & Flash",
})
