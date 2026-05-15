-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

<<<<<<< HEAD
-- Iterate over all Lua files in the plugins directory and load them
local plugins_dir = vim.fs.joinpath(vim.fn.stdpath 'config', 'lua', 'custom', 'plugins')
for file_name, type in vim.fs.dir(plugins_dir) do
  if type == 'file' and file_name:match '%.lua$' and file_name ~= 'init.lua' then
    local module = file_name:gsub('%.lua$', '')
    require('custom.plugins.' .. module)
  end
end
=======
---@module 'lazy'
---@type LazySpec
return {

  -- Tender colorscheme
  {
    'jacoborus/tender.vim',
    lazy = false,
    priority = 1000,
    config = function()
      vim.opt.termguicolors = true
      vim.cmd.colorscheme 'tender'
    end,
  },

  -- Statusline
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      options = {
        theme = 'auto',
        icons_enabled = true,
      },
    },
  },

  -- File tree
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    cmd = {
      'NvimTreeToggle',
      'NvimTreeOpen',
      'NvimTreeFocus',
      'NvimTreeFindFile',
    },
    keys = {
      { '<leader>e', '<cmd>NvimTreeToggle<CR>', desc = 'Toggle file tree' },
    },
    opts = {
      view = {
        width = 30,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = false,
      },
    },
  },

}

>>>>>>> e029e0d (Update nvim binding and plugins.)
