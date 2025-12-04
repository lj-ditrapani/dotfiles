local opt = vim.opt

opt.number = true              -- show line numbers
opt.spell = false

-- Don't use smartindent
-- Not compatible with per-file indents
-- causes copy/paste issues
opt.autoindent = true
opt.expandtab = true
opt.softtabstop = 4
opt.shiftwidth = 4

-- do incremental searching
opt.incsearch = true           -- set incsearch
opt.hlsearch = true            -- set hlsearch
opt.ignorecase = true          -- case insensitive
opt.smartcase = true           -- (capital letters cause case sensitive)

opt.backspace = { "indent", "eol", "start" }

opt.encoding = "utf-8"
opt.fileencoding = "utf-8"
opt.fileencodings = { "ucs-bom", "utf-8", "default", "latin1" }

opt.directory = { "~/.vim/swap", "." }

-- syntax on
vim.cmd("syntax on")

-- ======================
-- Highlight groups
-- ======================
vim.cmd("hi clear SpellCap")
vim.cmd("hi SpellCap cterm=underline")
vim.cmd("hi SpellBad ctermfg=0")

-- ======================
-- Keymaps
-- ======================
local map = vim.keymap.set

map("n", "h", "<Esc>", { noremap = true })
map("n", "j", "<Esc>", { noremap = true })
map("n", "k", "<Esc>", { noremap = true })
map("n", "l", "<Esc>", { noremap = true })
