return {
    'MunifTanjim/eslint.nvim',
    config = function()
      local eslint = require 'eslint'
      local lspconfig = require 'lspconfig'
      local root_pattern = require('lspconfig.util').root_pattern

      eslint.setup {
        bin = 'eslint_d',
        code_actions = {
          enable = true,
          apply_on_save = {
            enable = true,
            types = { 'directive', 'problem', 'suggestion', 'layout' },
          },
        },
        diagnostics = {
          enable = true,
          run_on = 'save',
        },
      }

      lspconfig.eslint.setup {
        on_attach = function(client, bufnr)
          vim.api.nvim_create_autocmd('BufWritePre', {
            buffer = bufnr,
            command = 'EslintFixAll',
          })
        end,
        root_dir = root_pattern('.eslintrc', '.eslintrc.json', 'node_modules/bin', '.git'),
      }
    end,
  }
