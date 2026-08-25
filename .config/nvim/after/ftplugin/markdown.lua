-- Hard-wrap markdown at 80 columns
vim.opt_local.textwidth = 80
vim.opt_local.formatoptions:append("t") -- auto-wrap text while typing
vim.opt_local.formatexpr = "" -- use built-in gq wrapping, not conform/LSP
