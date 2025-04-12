--Saving and quiting
vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.keymap.set("n", "<leader>Z", vim.cmd.xa)

--Return to directory
vim.keymap.set("n", "<leader>pd", vim.cmd.Ex)

--Switch to previously edited file
vim.keymap.set("n", "<BS>", "<C-^>")

--Useful mappings
vim.keymap.set("n", "<F2>", function()
    vim.o.number = not vim.o.number
    vim.o.relativenumber = not vim.o.relativenumber
end)

--Remove highlighting
--vim.keymap.set("n", "<leader>n", vim.cmd.noh)

--Navigating split windows
vim.keymap.set("n", "<leader>h", "<C-W><C-H>")
vim.keymap.set("n", "<leader>j", "<C-W><C-J>")
vim.keymap.set("n", "<leader>k", "<C-W><C-K>")
vim.keymap.set("n", "<leader>l", "<C-W><C-L>")

--Autoclose quotes, braces, curly braces, and parens
vim.keymap.set("i", "<leader>{{", "{<CR>}<Esc>ko")
vim.keymap.set("i", "<leader>{", "{}<Left>")
vim.keymap.set("i", "<leader>(", "()<Left>")
vim.keymap.set("i", "<leader>[", "[]<Left>")
vim.keymap.set("i", "<leader>\"", "\"\"<Left>")

--Useful cursor movement right in insert mode
vim.keymap.set("i", "<leader>ll", "<Right>")

--Moving highlighted text around
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--Keep search cursor in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

--Paste to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "Q", "<nop>")

--Latex
local make_block = function()
    local begin_type = vim.fn.input("Block type: ")
    local string1 = "\\begin{" .. begin_type .. "}"
    local string2 = "\\end{" .. begin_type .. "}"
    local row, col = unpack(vim.api.nvim_win_get_cursor(0))
    vim.api.nvim_buf_set_text(0, row-1, col, row-1, col, {string1})
    vim.api.nvim_buf_set_lines(0, row, row, false, {""})
    vim.api.nvim_buf_set_lines(0, row+1, row+1, false, {string2})
    vim.cmd('norm! j')
    vim.api.nvim_input('\t')
end
vim.api.nvim_create_autocmd("FileType", {
    pattern = {"latex", "tex"},
    callback = function()
        vim.keymap.set("i", "<leader>mb", make_block, {buffer = true})
        vim.keymap.set("i", "<leader>$", "$$<Left>")
    end,
})
