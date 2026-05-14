-- Lazygit
vim.keymap.set('n', '<leader>gg', '<Cmd>LazyGit<CR>')
vim.keymap.set('n', '<leader>dd', '<Cmd>LazyDocker<CR>')
-- Move Codigo selecionado
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
-- fazer o delete com dd nao salvar no clipboard
vim.api.nvim_set_keymap('n', 'x', '"_x', { noremap = true })
vim.api.nvim_set_keymap('n', 'd', '"_d', { noremap = true })
vim.api.nvim_set_keymap('n', 'D', '"_D', { noremap = true })
vim.api.nvim_set_keymap('v', 'd', '"_d', { noremap = true })

vim.api.nvim_set_keymap('n', '<leader>d', '""d', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>D', '""D', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader>d', '""d', { noremap = true })
-- Faz que o ctrl + d e ctrl + u mova a tela alinhando no centro da tela
vim.api.nvim_set_keymap('n', '<C-d>', '<C-d>zz', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-u>', '<C-u>zz', { noremap = true })
-- funcao e atalho para apagar os buffers menos o atual

-- Map <leader>db to BufOnly command
vim.api.nvim_set_keymap('n', '<leader>db', ':%bd|e#|bd#<CR>', { noremap = true, silent = true })

-- Spectre
vim.keymap.set('n', '<leader>S', '<cmd>lua require("spectre").toggle()<CR>', {
    desc = "Toggle Spectre"
})
vim.keymap.set('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
    desc = "Search current word"
})
vim.keymap.set('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', {
    desc = "Search current word"
})
vim.keymap.set('n', '<leader>sp', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
    desc = "Search on current file"
})

-- zenmode
vim.keymap.set('n', '<leader>z', '<cmd>:ZenMode<CR>', {
    desc = "Toggle ZenMode"
})

-- Final minhas Keys Maps
vim.opt.fileformats = "unix,dos,mac"
-- gitblame
vim.g.blamer_enabled = true
vim.g.blamer_prefix = ' > '
-- Use spaces instead of tabs for indentation
vim.o.expandtab = true
-- Set the number of spaces used for each indentation level
vim.o.shiftwidth = 2
-- Set the number of spaces used for each <Tab>
vim.o.tabstop = 2
-- Use auto-indentation
vim.o.autoindent = true
-- Abrir o historico local de alteracoes
vim.api.nvim_set_keymap('n', '<leader>u', '<cmd>:UndotreeToggle<CR>', { noremap = true, desc = "Open UndoTree" })
