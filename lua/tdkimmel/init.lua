require("tdkimmel.set")
require("tdkimmel.remap")
require("tdkimmel.lazy_init")

local augroup = vim.api.nvim_create_augroup
local tdkimmelGroup = augroup('tdkimmel', {})

local autocmd = vim.api.nvim_create_autocmd

autocmd('LspAttach', {
    group = tdkimmelGroup,
    callback = function(e)
        local opts = { buffer = e.buf }
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "gvd", function()
            vim.cmd([[vsplit]])
            vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "ghd", function()
            vim.cmd([[split]])
            vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, opts)
        --Diagnostics
        vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
        vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    end
})
