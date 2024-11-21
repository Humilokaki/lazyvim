require("quarto").activate()

vim.keymap.set("n", "<leader>cp", function()
  local line = vim.fn.line(".")
  vim.fn.append(line, "```python")
  vim.fn.append(line + 1, "")
  vim.fn.append(line + 2, "```")
  vim.cmd("normal! j")
end, { buffer = true, desc = "Insert Python Code Block" })
