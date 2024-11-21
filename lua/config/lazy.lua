local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- Specify the plugins here
  {
    "LazyVim/LazyVim", -- LazyVim plugin
    import = "lazyvim.plugins", -- Import LazyVim's predefined plugins
  },
  {
    import = "plugins", -- Import your custom plugins
  },
}, {
  defaults = {
    lazy = false, -- Load plugins during startup by default
    version = false, -- Use the latest commit for plugins, avoid version locking
  },
  install = { colorscheme = { "tokyonight", "habamax" } }, -- Install these colorschemes by default
  checker = {
    enabled = true, -- Enable automatic plugin update checking
    notify = false, -- Do not notify on updates
  },
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip", -- Disable unnecessary runtime plugins
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
  rocks = {
    hererocks = true, -- If you don't have Lua 5.1 globally installed, use hererocks
  },
})
