-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- LazyVim's <leader>co predicate (regex ^source%.organizeImports%.?$) doesn't
-- match suffixed kinds like ruff's `source.organizeImports.ruff`, so the
-- keymap never registers. Bind it directly.
vim.keymap.set("n", "<leader>co", function()
  vim.lsp.buf.code_action({
    apply = true,
    context = { only = { "source.organizeImports" }, diagnostics = {} },
  })
end, { desc = "Organize Imports" })
