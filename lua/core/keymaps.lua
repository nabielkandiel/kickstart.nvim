vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.have_nerd_font = true

-- [[ Basic Keymaps ]]
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

local opts = { noremap = true, silent = true }

-- save without formatting
vim.keymap.set('n', '<leader>bn', '<cmd>noautocmd w <CR>', opts)

-- vertical scroll and center
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)

-- find and center
vim.keymap.set('n', 'n', 'nzzzv', opts)
vim.keymap.set('n', 'N', 'Nzzzv', opts)

-- Buffers
vim.keymap.set('n', 'b<Tab>', ':bnext<CR>', opts)
vim.keymap.set('n', 'b<S-Tab>', ':bprevious<CR>', opts)
vim.keymap.set('n', 'bx', ':bdelete<CR>', opts)
vim.keymap.set('n', 'bn', '<cmd> enew <CR>', opts)

-- Window Managment
vim.keymap.set('n', '<leader>wv', '<C-w>v', opts)
vim.keymap.set('n', '<leader>wh', '<C-w>s', opts)
vim.keymap.set('n', '<leader>ws', '<C-W>=', opts)
vim.keymap.set('n', '<leader>wx', ':close<CR>', opts)

CORE_KEYMAPS = {
  { '<leader>w', group = '[W]indow' },
  { '<leader>wv', desc = 'Split Window Vertical' },
  { '<leader>wh', desc = 'Split Window Horizontal' },
  { '<leader>ws', desc = 'Make Split Same Size' },
  { '<leader>wx', desc = 'Close Split' },
  { '<leader>wn', desc = 'save no formatting' },
  { '<leader>b', group = '[B]uffers' },
  { '<leader>b<Tab>', desc = 'next buffer' },
  { '<leader>b<S-Tab>', desc = 'prev buffer' },
  { '<leader>bx', desc = 'close buffer' },
  { '<leader>bn', desc = 'new buffer' },
  { '<leader>bf', desc = 'save buffer (no format)' },
}

-- Keybinds to make split navigation easier.
--   Use CTRL+<hjkl> to switch between windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')
-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
-- vim.keymap.set("n", "<C-S-h>", "<C-w>H", { desc = "Move window to the left" })
-- vim.keymap.set("n", "<C-S-l>", "<C-w>L", { desc = "Move window to the right" })
-- vim.keymap.set("n", "<C-S-j>", "<C-w>J", { desc = "Move window to the lower" })
-- vim.keymap.set("n", "<C-S-k>", "<C-w>K", { desc = "Move window to the upper" })
