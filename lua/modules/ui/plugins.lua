-- author: glepnr https://github.com/glepnir
-- date: 2022-07-02
-- License: MIT

local plugin = require('core.pack').register_plugin
local conf = require('modules.ui.config')

plugin({
  'catppuccin/nvim',
  as = 'catppuccin',
  config = conf.catppuccin,
  run = ":CatppuccinCompile"
})

plugin({ 'glepnir/dashboard-nvim', config = conf.dashboard })

plugin({
  'feline-nvim/feline.nvim',
  config = conf.feline,
  requires = 'kyazdani42/nvim-web-devicons',
})

plugin({
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v2.x',
  config = conf.neotree,
  requires = {
    'nvim-lua/plenary.nvim',
    'kyazdani42/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  }
})

plugin({ 'akinsho/nvim-bufferline.lua', config = conf.nvim_bufferline, requires = 'kyazdani42/nvim-web-devicons' })

plugin({
  'lukas-reineke/indent-blankline.nvim',
  config = conf.indentlines,
  --after = 'nvim-treesitter'
})

plugin({
  'lewis6991/gitsigns.nvim',
  config = function()
    require('gitsigns').setup()
  end
})
