return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    style = "storm", -- Available styles: storm, night, moon, day
    transparent = false,
    terminal_colors = true,
    styles = {
      comments = { italic = true },
      keywords = { italic = true },
      functions = {},
      variables = {},
    },
    on_highlights = function(hl, c)
      hl["@lsp.type.namespace.go"] = { fg = c.blue1, bold = true }
      hl["@lsp.type.parameter.go"] = { fg = c.yellow }
      hl["@lsp.type.property.go"] = { fg = c.green1 }
      hl["@lsp.type.variable.go"] = { fg = c.fg }
      hl["@lsp.typemod.variable.defaultLibrary.go"] = { fg = c.red, bold = true }
      hl["@lsp.typemod.function.defaultLibrary.go"] = { fg = c.blue, bold = true }
    end,
  },
}

