-- ~/.config/nvim/lua/plugins/colorscheme.lua
return {
  {
    "craftzdog/solarized-osaka.nvim",
    branch = "osaka",
    lazy = true,
    priority = 1000,
    opts = {
      transparent = false, -- passe à true si ton terminal a un fond/blur agréable
      terminal_colors = true,

      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = { bold = true },
        variables = {},
        sidebars = "dark",
        floats = "dark",
      },

      sidebars = { "qf", "help", "terminal", "neo-tree", "Trouble" },
      hide_inactive_statusline = false,
      dim_inactive = true, -- atténue les fenêtres inactives, pratique avec les splits
      lualine_bold = true,

      on_colors = function(colors)
        -- Numéros de ligne un peu plus lisibles
        colors.fg_gutter = colors.comment
      end,

      on_highlights = function(hl, c)
        -- Ligne courante et numéro de ligne actif mis en valeur
        hl.CursorLine = { bg = c.bg_highlight }
        hl.CursorLineNr = { fg = c.yellow, bold = true }

        -- Séparateurs de fenêtres discrets mais visibles
        hl.WinSeparator = { fg = c.border, bold = true }

        -- Flottants (Telescope, LSP hover, etc.) avec bordure colorée
        hl.FloatBorder = { fg = c.blue, bg = c.bg_dark }
        hl.NormalFloat = { bg = c.bg_dark }

        -- Telescope
        hl.TelescopeBorder = { fg = c.blue, bg = c.bg_dark }
        hl.TelescopeNormal = { bg = c.bg_dark }
        hl.TelescopePromptBorder = { fg = c.cyan, bg = c.bg_dark }
        hl.TelescopePromptTitle = { fg = c.bg_dark, bg = c.cyan, bold = true }
        hl.TelescopePreviewTitle = { fg = c.bg_dark, bg = c.green, bold = true }
        hl.TelescopeResultsTitle = { fg = c.bg_dark, bg = c.blue, bold = true }

        -- Sélection visuelle plus nette
        hl.Visual = { bg = c.bg_highlight, bold = true }

        -- Texte virtuel (diagnostics, hints) légèrement estompé
        hl.DiagnosticVirtualTextError = { fg = c.red, bg = "NONE", italic = true }
        hl.DiagnosticVirtualTextWarn = { fg = c.yellow, bg = "NONE", italic = true }
        hl.DiagnosticVirtualTextInfo = { fg = c.blue, bg = "NONE", italic = true }
        hl.DiagnosticVirtualTextHint = { fg = c.cyan, bg = "NONE", italic = true }
      end,
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "solarized-osaka",
    },
  },
}
