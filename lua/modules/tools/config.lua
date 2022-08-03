-- author: glepnr https://github.com/glepnir
-- date: 2022-07-02
-- License: MIT

local config = {}

function config.telescope()
  if not packer_plugins['plenary.nvim'].loaded then
    vim.cmd([[packadd plenary.nvim]])
    vim.cmd([[packadd popup.nvim]])
    -- vim.cmd([[packadd telescope-fzf-native.nvim]])
    vim.cmd([[packadd telescope-file-browser.nvim]])
  end
  require('telescope').setup({
    defaults = {
      layout_config = {
        horizontal = { prompt_position = 'top', results_width = 0.3 },
        vertical = { mirror = false },
      },
      sorting_strategy = 'ascending',
      file_previewer = require('telescope.previewers').vim_buffer_cat.new,
      grep_previewer = require('telescope.previewers').vim_buffer_vimgrep.new,
      qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,
    },
--     extensions = {
--       fzf_native = {
--         fuzzy = true,
--         override_generic_sorter = true,
--         override_file_sorter = true,
--       },
--     },
  })
  -- require('telescope').load_extension('fzf')
end


function config.lastplace()
  require'nvim-lastplace'.setup({
    lastplace_ignore_buftype = {"quickfix", "nofile", "help"},
    lastplace_ignore_filetype = {"gitcommit", "gitrebase", "svn", "hgcommit"},
    lastplace_open_folds = true
})
end


function config.comment()
  require('nvim_comment').setup()
end

function config.todo()
  require('todo-comments').setup()
end

return config
