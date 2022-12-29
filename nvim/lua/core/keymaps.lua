-- Key mappings file

-- Modes
--   normal = "n",
--   insert = "i",
--   visual = "v",
--   visual_block = "x",
--   command = "c",
--   terminal = "t",

function map(mode, shortcut, command)
    vim.api.nvim_set_keymap(mode, shortcut, command, { noremap=true, silent=true })
end

-- This is for multiple mappings
function mmap(shortcut, command)
    map('n', shortcut, command)
    map('i', shortcut, command)
    map('t', shortcut, command)
end

vim.g.mapleader = ' '

--------------
-- General
--------------
map('n', '<C-x>', 'dd')  -- one line delete ctrl + x
map('n', '<Tab>', '>>')
map('n', '<S-Tab>', '<<')

-- file io
mmap('<C-s>', '<cmd>w<CR>')  -- save file using ctrl + s
mmap('<C-q>', '<cmd>qa<CR>')  -- close file using shift + q

-- window navigation
mmap('<C-h>', '<Cmd>wincmd h<CR>')
mmap('<C-j>', '<Cmd>wincmd j<CR>')
mmap('<C-k>', '<Cmd>wincmd k<CR>')
mmap('<C-l>', '<Cmd>wincmd l<CR>')
map('t', '<Esc>', '<C-\\><C-n>')

-- Window management
map('n', '-', '<Cmd>split<CR>')
map('n', '|', '<Cmd>vertical split<CR>')
map('n', 'se', '<C-w>=')
map('n', 'sq', '<Cmd>close<CR>')

-- Resize window with arrows
mmap('<PageUp>', '<Cmd>resize +2<CR>')
mmap('<PageDown>', '<Cmd>resize -2<CR>')
map('n', "_", "<Cmd>vertical resize -2<CR>")
map('n', "+", "<Cmd>vertical resize +2<CR>")

--------------
-- Plugins
--------------
-- Comment
if vim.fn.has("linux") or vim.fn.has("win32") then
    vim.keymap.set('n', '<C-_>', require('Comment.api').toggle.linewise.current)  -- The origin key command is 'gcc'
else
    vim.keymap.set('n', '<C-/>', require('Comment.api').toggle.linewise.current)  -- The origin key command is 'gcc'
end

-- nvim-tree
mmap('<F1>', "<Cmd>NvimTreeToggle<CR>")

-- toggleterm
mmap('<F2>', '<Cmd>ToggleTerm size=10 direction=horizontal ToggleTermSetName t1<CR>')
mmap('<F3>', '<Cmd>ToggleTerm size=80 direction=vertical ToggleTermSetName t2<CR>')
mmap('<F4>', '<Cmd>ToggleTerm size=10 direction=float ToggleTermSetName t3<CR>')
mmap('<F9>', '<Cmd>TermExec cmd="python %:p"<CR>')

-- telescope
map('n', '<leader>ff', "<Cmd>Telescope find_files<CR>")
map('n', '<leader>fg', "<Cmd>Telescope live_grep<CR>")
map('n', '<leader>fb', "<Cmd>Telescope buffers<CR>")
map('n', '<leader>fh', "<Cmd>Telescope help_tags<CR>")

-- barbar
mmap('˙', '<Cmd>BufferPrevious<CR>')    -- move to previous
mmap('¬', '<Cmd>BufferNext<CR>')    -- move to next
mmap('Ó', '<Cmd>BufferMovePrevious<CR>')    -- re-order to previous
mmap('Ò', '<Cmd>BufferMoveNext<CR>')    -- re-order to next
mmap('π', '<Cmd>BufferPin<CR>')    -- Pin buffer
mmap('œ', '<Cmd>BufferClose<CR>')    -- close buffer  

-- LSP
--nmap('K', '<cmd>Lspsaga hover_doc<cr>')
--imap('<C-k>', '<cmd>Lspsaga hover_doc<cr>')
--nmap('gh', '<cmd>Lspsaga lsp_finder<cr>')
--nmap('<C-e>', '<cmd>Lspsaga show_line_diagnostics<CR>')

-- git
--nmap('<C-g>', '<cmd>GitMessenger<cr>')

