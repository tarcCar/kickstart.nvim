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
  opts = {
        filtered_items = {
          hide_dotfiles = false,
        },
  },
  config = function()
    require('neo-tree').setup {
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
        },
      }
    }
  end,
}
