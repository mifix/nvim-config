-- author: glepnr https://github.com/glepnir
-- date: 2022-07-02
-- License: MIT

local plugin = require('core.pack').register_plugin
local conf = require('modules.tools.config')

plugin({
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  cmd = 'Telescope',
  config = conf.telescope,
  requires = {
    { 'nvim-lua/popup.nvim', opt = true },
    { 'nvim-lua/plenary.nvim', opt = false },
    -- FIX: fzf or fzy native extension
    -- { 'nvim-telescope/telescope-fzf-native.nvim',  run = 'make' },
  },
})

plugin({
  'ethanholz/nvim-lastplace',
  config = conf.lastplace,
})


plugin({
  'terrortylor/nvim-comment',
  config = conf.comment,
})

plugin({
  'folke/todo-comments.nvim',
  requires = { { 'nvim-lua/plenary.nvim', opt = false } },
  config = conf.todo,
})
