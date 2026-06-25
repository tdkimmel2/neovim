vim.opt.guicursor = ""
vim.g.mapleader = ","

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.foldmethod = "indent"
vim.opt.foldenable = false
vim.opt.foldlevel = 99

vim.opt.smartindent = true

-- Ignore case when searching unless case is used to search
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = 'yes'
--vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.api.nvim_create_user_command("RemoveWhitespace", "%s/\\s\\+$//e", {})

vim.api.nvim_create_autocmd("FileType", {
    pattern = {"systemverilog", "verilog"},
    command = "setlocal tabstop=2 softtabstop=2 shiftwidth=2"
})
