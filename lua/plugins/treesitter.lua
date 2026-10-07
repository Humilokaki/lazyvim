-- ~/.config/nvim/lua/plugins/treesitter.lua
return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "c", "cpp", "python", "lua", "markdown", "markdown_inline" },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    keys = {
      -- select
      {
        "ib",
        function()
          require("nvim-treesitter-textobjects.select").select_textobject("@code_cell.inner", "textobjects")
        end,
        mode = { "x", "o" },
        desc = "in block",
      },
      {
        "ab",
        function()
          require("nvim-treesitter-textobjects.select").select_textobject("@code_cell.outer", "textobjects")
        end,
        mode = { "x", "o" },
        desc = "around block",
      },
      -- move
      {
        "]b",
        function()
          require("nvim-treesitter-textobjects.move").goto_next_start("@code_cell.inner", "textobjects")
        end,
        mode = { "n", "x", "o" },
        desc = "next code block",
      },
      {
        "[b",
        function()
          require("nvim-treesitter-textobjects.move").goto_previous_start("@code_cell.inner", "textobjects")
        end,
        mode = { "n", "x", "o" },
        desc = "previous code block",
      },
      -- swap
      {
        "<leader>sbl",
        function()
          require("nvim-treesitter-textobjects.swap").swap_next("@code_cell.outer")
        end,
        desc = "swap block next",
      },
      {
        "<leader>sbh",
        function()
          require("nvim-treesitter-textobjects.swap").swap_previous("@code_cell.outer")
        end,
        desc = "swap block previous",
      },
    },
  },
}
