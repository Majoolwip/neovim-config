local home = os.getenv("HOME")
local g = vim.g
local opt = vim.opt

-- Set the leader key to <Space>
g.mapleader = " "
g.maplocalleader = " "

-- I use a nerd font for my terminal for better characters
g.have_nerd_font = true

-- Don't need these, just lua and vimscript
g.loaded_perl_provider = 0
g.loaded_ruby_provider = 0
g.loaded_node_provider = 0
g.loaded_python_provider = 0
g.loaded_python3_provider = 0

-- UTF-8 encoding only
opt.encoding = "utf-8"

-- Ensure backspace works as expected.
opt.backspace = "indent,eol,start"

-- Increase the command history.
opt.history = 1000

-- On some commands, move the cursor to the beginning of the line.
opt.startofline = true

-- Only a maximum of 10 suggestions in the drop down box.
opt.pumheight = 10

-- Don't show the current mode since I have a statusline plugin that already does.
opt.showmode = false

-- Let neovim and windows share the clipboard.
opt.clipboard = "unnamedplus"

-- Show line number and make them relative.
opt.nu = true
opt.relativenumber = true

-- Use two spaces for indentation.
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true

-- No line wrapping.
opt.wrap = false

-- Don't create swap and backup files.
opt.swapfile = false
opt.backup = false

-- Create an undo file and save it to this dir.
opt.undodir = home .. "/AppData/Local/nundodir"
opt.undofile = true

-- Enable incremental search and smartly handle capitalization.
opt.hlsearch = false
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

-- Enable pretty colors.
opt.termguicolors = true

-- Don't scroll to far off the page
opt.scrolloff = 8

-- Enable the sign column that is to the left of the line numbers. Used for showing errors.
opt.signcolumn = "yes"

-- Make neovim update faster and map sequence wait time shorter.
opt.updatetime = 250
opt.timeoutlen = 300

-- New splits should go to the right and down.
opt.splitright = true
opt.splitbelow = true

-- Make neovim display some whitespace charaters.
opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Make subsitution commands visable as you type them.
opt.inccommand = "split"
