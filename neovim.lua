local colors = {
  bg = "#191414",
  fg = "#FFEAF2",
  surface = "#2A2025",
  surface_alt = "#21181D",
  selection = "#3A1F29",
  muted = "#B89AA7",
  dim = "#6F555F",
  accent = "#F1396D",
  red = "#FF4D80",
  green = "#D93665",
  green_bright = "#F4618E",
  yellow = "#FFB3CA",
  yellow_bright = "#FFD1DF",
  blue = "#FF6F9B",
  blue_bright = "#FF7AA3",
  magenta = "#FF5F91",
  cyan = "#F88AB0",
  white = "#FFEAF2",
}

local terminal_colors = {
  colors.bg,
  colors.accent,
  colors.green,
  colors.yellow,
  colors.blue,
  colors.accent,
  colors.cyan,
  colors.fg,
  colors.surface,
  colors.red,
  colors.green_bright,
  colors.yellow_bright,
  colors.blue_bright,
  colors.magenta,
  colors.white,
  colors.white,
}

local function set_hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

local function apply_red_monarch()
  for index, color in ipairs(terminal_colors) do
    vim.g["terminal_color_" .. (index - 1)] = color
  end

  set_hl("Normal", { fg = colors.fg, bg = colors.bg })
  set_hl("NormalNC", { fg = colors.fg, bg = colors.bg })
  set_hl("NormalFloat", { fg = colors.fg, bg = colors.surface_alt })
  set_hl("FloatBorder", { fg = colors.accent, bg = colors.surface_alt })
  set_hl("FloatTitle", { fg = colors.accent, bg = colors.surface_alt, bold = true })
  set_hl("Cursor", { fg = colors.bg, bg = colors.accent })
  set_hl("CursorLine", { bg = colors.surface })
  set_hl("CursorColumn", { bg = colors.surface })
  set_hl("ColorColumn", { bg = colors.surface })
  set_hl("LineNr", { fg = colors.dim })
  set_hl("CursorLineNr", { fg = colors.accent, bold = true })
  set_hl("SignColumn", { fg = colors.fg, bg = colors.bg })
  set_hl("FoldColumn", { fg = colors.dim, bg = colors.bg })
  set_hl("Folded", { fg = colors.muted, bg = colors.surface })
  set_hl("EndOfBuffer", { fg = colors.bg, bg = colors.bg })
  set_hl("NonText", { fg = colors.dim })
  set_hl("Whitespace", { fg = colors.surface })
  set_hl("Visual", { bg = colors.selection })
  set_hl("Search", { fg = colors.bg, bg = colors.yellow })
  set_hl("IncSearch", { fg = colors.bg, bg = colors.accent })
  set_hl("CurSearch", { fg = colors.bg, bg = colors.accent })
  set_hl("Substitute", { fg = colors.bg, bg = colors.blue_bright })
  set_hl("MatchParen", { fg = colors.yellow_bright, bg = colors.selection, bold = true })
  set_hl("Directory", { fg = colors.accent, bold = true })
  set_hl("Title", { fg = colors.accent, bold = true })
  set_hl("Question", { fg = colors.blue_bright })
  set_hl("MoreMsg", { fg = colors.blue_bright })
  set_hl("WarningMsg", { fg = colors.yellow })
  set_hl("ErrorMsg", { fg = colors.red })
  set_hl("ModeMsg", { fg = colors.fg })

  set_hl("StatusLine", { fg = colors.fg, bg = colors.surface })
  set_hl("StatusLineNC", { fg = colors.muted, bg = colors.bg })
  set_hl("WinBar", { fg = colors.fg, bg = colors.bg })
  set_hl("WinBarNC", { fg = colors.muted, bg = colors.bg })
  set_hl("WinSeparator", { fg = colors.selection, bg = colors.bg })
  set_hl("TabLine", { fg = colors.muted, bg = colors.surface })
  set_hl("TabLineFill", { bg = colors.bg })
  set_hl("TabLineSel", { fg = colors.bg, bg = colors.accent, bold = true })

  set_hl("Pmenu", { fg = colors.fg, bg = colors.surface_alt })
  set_hl("PmenuSel", { fg = colors.bg, bg = colors.accent })
  set_hl("PmenuSbar", { bg = colors.surface })
  set_hl("PmenuThumb", { bg = colors.accent })
  set_hl("WildMenu", { fg = colors.bg, bg = colors.accent })

  set_hl("Comment", { fg = colors.dim, italic = true })
  set_hl("Constant", { fg = colors.yellow })
  set_hl("String", { fg = colors.yellow })
  set_hl("Character", { fg = colors.yellow })
  set_hl("Number", { fg = colors.blue_bright })
  set_hl("Boolean", { fg = colors.magenta })
  set_hl("Float", { fg = colors.blue_bright })
  set_hl("Identifier", { fg = colors.fg })
  set_hl("Function", { fg = colors.accent })
  set_hl("Statement", { fg = colors.red })
  set_hl("Conditional", { fg = colors.red })
  set_hl("Repeat", { fg = colors.red })
  set_hl("Label", { fg = colors.magenta })
  set_hl("Operator", { fg = colors.cyan })
  set_hl("Keyword", { fg = colors.accent })
  set_hl("Exception", { fg = colors.red })
  set_hl("PreProc", { fg = colors.magenta })
  set_hl("Include", { fg = colors.magenta })
  set_hl("Define", { fg = colors.magenta })
  set_hl("Macro", { fg = colors.magenta })
  set_hl("PreCondit", { fg = colors.magenta })
  set_hl("Type", { fg = colors.blue_bright })
  set_hl("StorageClass", { fg = colors.accent })
  set_hl("Structure", { fg = colors.blue_bright })
  set_hl("Typedef", { fg = colors.blue_bright })
  set_hl("Special", { fg = colors.cyan })
  set_hl("SpecialChar", { fg = colors.cyan })
  set_hl("Tag", { fg = colors.accent })
  set_hl("Delimiter", { fg = colors.muted })
  set_hl("SpecialComment", { fg = colors.muted, italic = true })
  set_hl("Debug", { fg = colors.red })
  set_hl("Underlined", { fg = colors.blue_bright, underline = true })
  set_hl("Ignore", { fg = colors.dim })
  set_hl("Error", { fg = colors.red })
  set_hl("Todo", { fg = colors.bg, bg = colors.yellow_bright, bold = true })

  set_hl("DiagnosticError", { fg = colors.red })
  set_hl("DiagnosticWarn", { fg = colors.yellow })
  set_hl("DiagnosticInfo", { fg = colors.blue_bright })
  set_hl("DiagnosticHint", { fg = colors.cyan })
  set_hl("DiagnosticOk", { fg = colors.green_bright })
  set_hl("DiagnosticUnderlineError", { sp = colors.red, undercurl = true })
  set_hl("DiagnosticUnderlineWarn", { sp = colors.yellow, undercurl = true })
  set_hl("DiagnosticUnderlineInfo", { sp = colors.blue_bright, undercurl = true })
  set_hl("DiagnosticUnderlineHint", { sp = colors.cyan, undercurl = true })

  set_hl("DiffAdd", { fg = colors.green_bright, bg = colors.surface })
  set_hl("DiffChange", { fg = colors.blue_bright, bg = colors.surface })
  set_hl("DiffDelete", { fg = colors.red, bg = colors.surface })
  set_hl("DiffText", { fg = colors.yellow_bright, bg = colors.selection, bold = true })
  set_hl("GitSignsAdd", { fg = colors.green_bright })
  set_hl("GitSignsChange", { fg = colors.blue_bright })
  set_hl("GitSignsDelete", { fg = colors.red })

  set_hl("@comment", { link = "Comment" })
  set_hl("@constant", { link = "Constant" })
  set_hl("@string", { link = "String" })
  set_hl("@number", { link = "Number" })
  set_hl("@boolean", { link = "Boolean" })
  set_hl("@function", { link = "Function" })
  set_hl("@function.builtin", { fg = colors.accent })
  set_hl("@keyword", { link = "Keyword" })
  set_hl("@keyword.function", { fg = colors.accent })
  set_hl("@operator", { link = "Operator" })
  set_hl("@type", { link = "Type" })
  set_hl("@variable", { fg = colors.fg })
  set_hl("@variable.builtin", { fg = colors.magenta })
  set_hl("@property", { fg = colors.blue_bright })
  set_hl("@punctuation", { fg = colors.muted })
  set_hl("@tag", { fg = colors.accent })
  set_hl("@tag.attribute", { fg = colors.yellow })
  set_hl("@tag.delimiter", { fg = colors.muted })

  set_hl("TelescopeBorder", { fg = colors.accent, bg = colors.surface_alt })
  set_hl("TelescopeNormal", { fg = colors.fg, bg = colors.surface_alt })
  set_hl("TelescopePromptBorder", { fg = colors.accent, bg = colors.surface })
  set_hl("TelescopePromptNormal", { fg = colors.fg, bg = colors.surface })
  set_hl("TelescopePromptPrefix", { fg = colors.accent, bg = colors.surface })
  set_hl("TelescopeSelection", { fg = colors.fg, bg = colors.selection })
  set_hl("TelescopeMatching", { fg = colors.yellow_bright, bold = true })

  set_hl("WhichKey", { fg = colors.accent })
  set_hl("WhichKeyDesc", { fg = colors.fg })
  set_hl("WhichKeyGroup", { fg = colors.blue_bright })
  set_hl("WhichKeyBorder", { fg = colors.accent, bg = colors.surface_alt })
  set_hl("LazyNormal", { fg = colors.fg, bg = colors.surface_alt })
  set_hl("MasonNormal", { fg = colors.fg, bg = colors.surface_alt })
  set_hl("NeoTreeNormal", { fg = colors.fg, bg = colors.bg })
  set_hl("NeoTreeNormalNC", { fg = colors.fg, bg = colors.bg })
  set_hl("NeoTreeDirectoryName", { fg = colors.accent })
  set_hl("NeoTreeDirectoryIcon", { fg = colors.accent })
  set_hl("NeoTreeGitModified", { fg = colors.yellow })
  set_hl("NeoTreeGitAdded", { fg = colors.green_bright })
  set_hl("NeoTreeGitDeleted", { fg = colors.red })
end

return {
  {
    "kamatealif/monarch.nvim",
    lazy = false,
    priority = 1000,
    init = function()
      local group = vim.api.nvim_create_augroup("RedMonarchPalette", { clear = true })

      vim.api.nvim_create_autocmd("ColorScheme", {
        group = group,
        pattern = "monarch",
        callback = apply_red_monarch,
      })
    end,
    config = apply_red_monarch,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "monarch",
    },
  },
}
