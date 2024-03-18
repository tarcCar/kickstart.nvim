return {
  'nvim-neo-tree/neo-tree.nvim',
  keys = {
    {
      '<C-e>',
      function()
        require('neo-tree.command').execute { toggle = true, reveal = true, position = 'float' }
      end,
      desc = 'Explorer NeoTree (root dir)',
    },
  },
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {}
  end,
}
