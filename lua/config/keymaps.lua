-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Quarto keymaps
vim.keymap.set("n", "<localleader>rc", "<cmd>QuartoSend<CR>", { desc = "run cell", silent = true })
vim.keymap.set("n", "<localleader>ra", "<cmd>QuartoSendAbove<CR>", { desc = "run cell and above", silent = true })
vim.keymap.set("n", "<localleader>rA", "<cmd>QuartoSendAll<CR>", { desc = "run all cells", silent = true })
vim.keymap.set("n", "<localleader>rl", "<cmd>QuartoSendLine<CR>", { desc = "run line", silent = true })
vim.keymap.set("v", "<localleader>r", "<cmd>QuartoSendRange<CR>", { desc = "run visual range", silent = true })
vim.keymap.set(
  "n",
  "<localleader>RA",
  "<cmd>QuartoSendAll<CR>",
  { desc = "run all cells of all languages", silent = true }
)

-- Molten keymaps

vim.keymap.set("n", "<localleader>e", ":MoltenEvaluateOperator<CR>", { desc = "evaluate operator", silent = true })
vim.keymap.set(
  "n",
  "<localleader>os",
  ":noautocmd MoltenEnterOutput<CR>",
  { desc = "open output window", silent = true }
)
vim.keymap.set("n", "<localleader>rr", ":MoltenReevaluateCell<CR>", { desc = "re-eval cell", silent = true })
vim.keymap.set(
  "v",
  "<localleader>r",
  ":<C-u>MoltenEvaluateVisual<CR>gv",
  { desc = "execute visual selection", silent = true }
)
vim.keymap.set("n", "<localleader>oh", ":MoltenHideOutput<CR>", { desc = "close output window", silent = true })
vim.keymap.set("n", "<localleader>md", ":MoltenDelete<CR>", { desc = "delete Molten cell", silent = true })
