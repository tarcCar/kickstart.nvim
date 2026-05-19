return { 
  'zenbones-theme/zenbones.nvim',
  priority = 1000, 
  dependencies = "rktjmp/lush.nvim",
  config = function()
    vim.g.zenbones_italic_comments= false 
    vim.cmd.colorscheme 'zenbones'
  end,
}
