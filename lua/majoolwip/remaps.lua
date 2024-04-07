local nnoremap = function(rhs, lhs, bufopts, desc)
  bufopts.desc = desc
  vim.keymap.set("n", rhs, lhs, bufopts)
end
local bufopts = { noremap = true, silent = true }

nnoremap("[d", vim.diagnostic.goto_prev, bufopts, "Go to previous [D]iagnositic message")
nnoremap("]d", vim.diagnostic.goto_next, bufopts, "Go to next [D]iagnostic message")
nnoremap("<leader>e", vim.diagnostic.open_float, bufopts, "Show diagnostic [E]rror message")
nnoremap("<leader>q", vim.diagnostic.setloclist, bufopts, "Open diagnostic [Q]uickfix list")
