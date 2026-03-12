-- gruvbox-grove.lua
-- A green-shifted Gruvbox for Neovim — drop into:
--   ~/.config/nvim/colors/gruvbox-grove.lua
-- Then set in your LazyVim config:
--   vim.cmd("colorscheme gruvbox-grove")

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end
vim.o.background = "dark"
vim.g.colors_name = "gruvbox-grove"

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- ── Palette ───────────────────────────────────────────────────────────────
local p = {
  -- Backgrounds (dark grey with a green undertone, not pure grey)
  bg_hard = "#1c2019",
  bg = "#22261e",
  bg_soft = "#282d23",
  bg1 = "#303529", -- selection / visual
  bg2 = "#393e31", -- cursor line
  bg3 = "#42473a", -- split / column
  bg4 = "#4c5143", -- status line inactive

  -- Foregrounds (warm green-cream, not pure white)
  fg_hard = "#f5f0d8",
  fg = "#dde0c0",
  fg_soft = "#c8ceaa",
  fg1 = "#a8b490",
  fg2 = "#8a9878",
  fg3 = "#6d7d60",
  fg4 = "#5a6b4e",

  -- Greens — primary accent family (replaces Gruvbox yellows)
  green = "#7fbf5f", -- keywords, operators
  lime = "#a3c96b", -- functions, methods
  moss = "#b5c47a", -- strings
  forest = "#6daa6d", -- numbers, booleans, constants
  sage = "#8bbf70", -- types, namespaces
  fern = "#5a9948", -- darker accent (brackets, delimiters)

  -- Neutrals & semantics (kept but muted vs classic Gruvbox)
  red = "#cc6655", -- errors, deleted
  red_dim = "#aa4433", -- diff delete bg edge
  amber = "#a8943a", -- warnings (earthy gold, not bright yellow)
  amber_dim = "#7a6a28", -- warning bg
  aqua = "#55aaaa", -- builtins, special methods
  blue = "#6699cc", -- special, macro, preprocessor
  purple = "#cc99aa", -- parameters, tags

  -- Comments / subtle
  comment = "#5a6b48",
  invisible = "#3a4a30",

  -- UI chrome
  none = "NONE",
}

-- ── Editor chrome ─────────────────────────────────────────────────────────
hi("Normal", { fg = p.fg, bg = p.bg })
hi("NormalNC", { fg = p.fg1, bg = p.bg_hard })
hi("NormalFloat", { fg = p.fg, bg = p.bg_soft })
hi("FloatBorder", { fg = p.fern, bg = p.bg_soft })
hi("FloatTitle", { fg = p.lime, bg = p.bg_soft, bold = true })

hi("Cursor", { fg = p.bg, bg = p.green })
hi("CursorIM", { fg = p.bg, bg = p.lime })
hi("CursorLine", { bg = p.bg2 })
hi("CursorLineNr", { fg = p.green, bg = p.bg2, bold = true })
hi("CursorColumn", { bg = p.bg2 })

hi("LineNr", { fg = p.fg4 })
hi("SignColumn", { fg = p.fg3, bg = p.bg })
hi("ColorColumn", { bg = p.bg3 })
hi("Conceal", { fg = p.fg4 })

hi("Visual", { bg = p.bg1 })
hi("VisualNOS", { bg = p.bg1, underline = true })
hi("Search", { fg = p.bg, bg = p.lime, bold = true })
hi("IncSearch", { fg = p.bg, bg = p.green, bold = true })
hi("CurSearch", { fg = p.bg, bg = p.green, bold = true })
hi("Substitute", { fg = p.bg, bg = p.moss })

hi("StatusLine", { fg = p.fg_soft, bg = p.bg3, bold = true })
hi("StatusLineNC", { fg = p.fg4, bg = p.bg4 })
hi("TabLine", { fg = p.fg3, bg = p.bg3 })
hi("TabLineSel", { fg = p.fg_hard, bg = p.bg, bold = true })
hi("TabLineFill", { bg = p.bg_hard })

hi("WinBar", { fg = p.fg2, bg = p.bg_soft, bold = true })
hi("WinBarNC", { fg = p.fg4, bg = p.bg_hard })
hi("WinSeparator", { fg = p.bg3 })
hi("VertSplit", { fg = p.bg3 })

hi("Folded", { fg = p.fg3, bg = p.bg_soft, italic = true })
hi("FoldColumn", { fg = p.fern, bg = p.bg })

hi("Pmenu", { fg = p.fg_soft, bg = p.bg_soft })
hi("PmenuSel", { fg = p.bg, bg = p.sage, bold = true })
hi("PmenuSbar", { bg = p.bg3 })
hi("PmenuThumb", { bg = p.fern })
hi("PmenuMatch", { fg = p.lime, bg = p.bg_soft, bold = true })
hi("PmenuMatchSel", { fg = p.bg, bg = p.sage, bold = true })

hi("WildMenu", { fg = p.bg, bg = p.green, bold = true })

hi("MatchParen", { fg = p.lime, bg = p.bg1, bold = true })

hi("NonText", { fg = p.invisible })
hi("SpecialKey", { fg = p.bg3 })
hi("Whitespace", { fg = p.invisible })
hi("EndOfBuffer", { fg = p.invisible })

hi("Directory", { fg = p.lime, bold = true })
hi("Title", { fg = p.lime, bold = true })
hi("Question", { fg = p.green })
hi("MoreMsg", { fg = p.forest })
hi("ModeMsg", { fg = p.fg, bold = true })
hi("MsgArea", { fg = p.fg_soft })
hi("MsgSeparator", { bg = p.bg3 })
hi("ErrorMsg", { fg = p.red, bold = true })
hi("WarningMsg", { fg = p.amber })

hi("SpellBad", { sp = p.red, undercurl = true })
hi("SpellCap", { sp = p.blue, undercurl = true })
hi("SpellRare", { sp = p.purple, undercurl = true })
hi("SpellLocal", { sp = p.aqua, undercurl = true })

hi("QuickFixLine", { fg = p.lime, bold = true })
hi("qfLineNr", { fg = p.fg3 })

-- ── Syntax ────────────────────────────────────────────────────────────────
hi("Comment", { fg = p.comment, italic = true })
hi("SpecialComment", { fg = p.fern, italic = true })
hi("Todo", { fg = p.amber, bg = p.bg_soft, bold = true })
hi("Note", { fg = p.aqua, bold = true })
hi("Fixme", { fg = p.red, bold = true })

hi("Constant", { fg = p.forest })
hi("String", { fg = p.moss })
hi("Character", { fg = p.moss })
hi("Number", { fg = p.forest })
hi("Float", { fg = p.forest })
hi("Boolean", { fg = p.forest })

hi("Identifier", { fg = p.fg })
hi("Function", { fg = p.lime })
hi("Method", { fg = p.lime })

hi("Statement", { fg = p.green, bold = true })
hi("Conditional", { fg = p.green, bold = true })
hi("Repeat", { fg = p.green, bold = true })
hi("Label", { fg = p.green })
hi("Operator", { fg = p.green })
hi("Keyword", { fg = p.green, bold = true })
hi("Exception", { fg = p.red })

hi("PreProc", { fg = p.blue })
hi("Include", { fg = p.blue })
hi("Define", { fg = p.blue })
hi("Macro", { fg = p.blue })
hi("PreCondit", { fg = p.blue })

hi("Type", { fg = p.sage })
hi("StorageClass", { fg = p.sage })
hi("Structure", { fg = p.sage })
hi("Typedef", { fg = p.sage })

hi("Special", { fg = p.aqua })
hi("SpecialChar", { fg = p.aqua })
hi("Tag", { fg = p.purple })
hi("Delimiter", { fg = p.fern })
hi("Debug", { fg = p.red })

hi("Underlined", { underline = true })
hi("Ignore", { fg = p.invisible })
hi("Error", { fg = p.red, bold = true })

-- ── Treesitter ────────────────────────────────────────────────────────────
hi("@variable", { fg = p.fg })
hi("@variable.builtin", { fg = p.aqua, italic = true })
hi("@variable.parameter", { fg = p.purple })
hi("@variable.member", { fg = p.fg_soft })

hi("@constant", { fg = p.forest })
hi("@constant.builtin", { fg = p.forest, bold = true })
hi("@constant.macro", { fg = p.blue })

hi("@module", { fg = p.sage })
hi("@module.builtin", { fg = p.sage, bold = true })
hi("@label", { fg = p.green })

hi("@string", { fg = p.moss })
hi("@string.documentation", { fg = p.fg3, italic = true })
hi("@string.regexp", { fg = p.aqua })
hi("@string.escape", { fg = p.aqua })
hi("@string.special", { fg = p.aqua })
hi("@string.special.url", { fg = p.blue, underline = true })

hi("@character", { fg = p.moss })
hi("@number", { fg = p.forest })
hi("@number.float", { fg = p.forest })
hi("@boolean", { fg = p.forest, bold = true })

hi("@type", { fg = p.sage })
hi("@type.builtin", { fg = p.sage, bold = true })
hi("@type.definition", { fg = p.sage })

hi("@attribute", { fg = p.blue })
hi("@property", { fg = p.fg_soft })

hi("@function", { fg = p.lime })
hi("@function.builtin", { fg = p.lime, bold = true })
hi("@function.call", { fg = p.lime })
hi("@function.macro", { fg = p.blue })
hi("@function.method", { fg = p.lime })
hi("@function.method.call", { fg = p.lime })

hi("@constructor", { fg = p.sage })
hi("@operator", { fg = p.green })

hi("@keyword", { fg = p.green, bold = true })
hi("@keyword.function", { fg = p.green, bold = true })
hi("@keyword.operator", { fg = p.green })
hi("@keyword.import", { fg = p.blue })
hi("@keyword.storage", { fg = p.sage })
hi("@keyword.repeat", { fg = p.green, bold = true })
hi("@keyword.return", { fg = p.red })
hi("@keyword.exception", { fg = p.red })
hi("@keyword.conditional", { fg = p.green, bold = true })
hi("@keyword.conditional.ternary", { fg = p.green })
hi("@keyword.directive", { fg = p.blue })
hi("@keyword.coroutine", { fg = p.blue })

hi("@punctuation.delimiter", { fg = p.fern })
hi("@punctuation.bracket", { fg = p.fern })
hi("@punctuation.special", { fg = p.fern })

hi("@comment", { fg = p.comment, italic = true })
hi("@comment.documentation", { fg = p.fg3, italic = true })
hi("@comment.error", { fg = p.red, bold = true })
hi("@comment.warning", { fg = p.amber, bold = true })
hi("@comment.todo", { fg = p.amber, bold = true })
hi("@comment.note", { fg = p.aqua, bold = true })

hi("@markup.heading", { fg = p.lime, bold = true })
hi("@markup.heading.1", { fg = p.green, bold = true })
hi("@markup.heading.2", { fg = p.lime, bold = true })
hi("@markup.heading.3", { fg = p.sage, bold = true })
hi("@markup.raw", { fg = p.moss })
hi("@markup.raw.block", { fg = p.moss, bg = p.bg_soft })
hi("@markup.link", { fg = p.blue, underline = true })
hi("@markup.link.label", { fg = p.aqua })
hi("@markup.link.url", { fg = p.blue, underline = true, italic = true })
hi("@markup.italic", { italic = true })
hi("@markup.strong", { bold = true })
hi("@markup.strikethrough", { strikethrough = true })
hi("@markup.list", { fg = p.fern })
hi("@markup.list.checked", { fg = p.forest })
hi("@markup.list.unchecked", { fg = p.fg4 })

hi("@diff.plus", { fg = p.green })
hi("@diff.minus", { fg = p.red })
hi("@diff.delta", { fg = p.amber })

hi("@tag", { fg = p.sage })
hi("@tag.builtin", { fg = p.aqua })
hi("@tag.attribute", { fg = p.purple })
hi("@tag.delimiter", { fg = p.fern })

-- ── LSP ───────────────────────────────────────────────────────────────────
hi("DiagnosticError", { fg = p.red })
hi("DiagnosticWarn", { fg = p.amber })
hi("DiagnosticInfo", { fg = p.blue })
hi("DiagnosticHint", { fg = p.fern })
hi("DiagnosticOk", { fg = p.forest })

hi("DiagnosticVirtualTextError", { fg = p.red, bg = p.bg_soft, italic = true })
hi("DiagnosticVirtualTextWarn", { fg = p.amber, bg = p.bg_soft, italic = true })
hi("DiagnosticVirtualTextInfo", { fg = p.blue, bg = p.bg_soft, italic = true })
hi("DiagnosticVirtualTextHint", { fg = p.fern, bg = p.bg_soft, italic = true })

hi("DiagnosticUnderlineError", { sp = p.red, undercurl = true })
hi("DiagnosticUnderlineWarn", { sp = p.amber, undercurl = true })
hi("DiagnosticUnderlineInfo", { sp = p.blue, undercurl = true })
hi("DiagnosticUnderlineHint", { sp = p.fern, undercurl = true })

hi("LspReferenceText", { bg = p.bg1 })
hi("LspReferenceRead", { bg = p.bg1 })
hi("LspReferenceWrite", { bg = p.bg1, underline = true })
hi("LspSignatureActiveParameter", { fg = p.lime, bold = true, underline = true })
hi("LspCodeLens", { fg = p.comment, italic = true })
hi("LspInlayHint", { fg = p.fg4, bg = p.bg_soft, italic = true })

hi("@lsp.type.class", { link = "@type" })
hi("@lsp.type.decorator", { link = "@attribute" })
hi("@lsp.type.enum", { link = "@type" })
hi("@lsp.type.enumMember", { link = "@constant" })
hi("@lsp.type.function", { link = "@function" })
hi("@lsp.type.interface", { link = "@type" })
hi("@lsp.type.macro", { link = "@function.macro" })
hi("@lsp.type.method", { link = "@function.method" })
hi("@lsp.type.namespace", { link = "@module" })
hi("@lsp.type.parameter", { link = "@variable.parameter" })
hi("@lsp.type.property", { link = "@property" })
hi("@lsp.type.struct", { link = "@type" })
hi("@lsp.type.type", { link = "@type" })
hi("@lsp.type.typeParameter", { link = "@type" })
hi("@lsp.type.variable", { link = "@variable" })

hi("@lsp.mod.deprecated", { strikethrough = true })
hi("@lsp.mod.readonly", { italic = true })

-- ── Git / Diff ────────────────────────────────────────────────────────────
hi("DiffAdd", { fg = p.green, bg = "#1f2e18" })
hi("DiffChange", { fg = p.amber, bg = "#2a2514" })
hi("DiffDelete", { fg = p.red, bg = "#2a1714" })
hi("DiffText", { fg = p.amber, bg = "#3a330a", bold = true })

hi("GitSignsAdd", { fg = p.green })
hi("GitSignsChange", { fg = p.amber })
hi("GitSignsDelete", { fg = p.red })
hi("GitSignsAddNr", { fg = p.green })
hi("GitSignsChangeNr", { fg = p.amber })
hi("GitSignsDeleteNr", { fg = p.red })
hi("GitSignsAddLn", { bg = "#1f2e18" })
hi("GitSignsChangeLn", { bg = "#2a2514" })

-- ── Telescope ─────────────────────────────────────────────────────────────
hi("TelescopeNormal", { fg = p.fg, bg = p.bg_soft })
hi("TelescopeBorder", { fg = p.fern, bg = p.bg_soft })
hi("TelescopeTitle", { fg = p.lime, bg = p.bg_soft, bold = true })
hi("TelescopePromptNormal", { fg = p.fg, bg = p.bg1 })
hi("TelescopePromptBorder", { fg = p.green, bg = p.bg1 })
hi("TelescopePromptTitle", { fg = p.bg, bg = p.green, bold = true })
hi("TelescopePromptPrefix", { fg = p.green })
hi("TelescopePromptCounter", { fg = p.fg3 })
hi("TelescopeResultsNormal", { fg = p.fg, bg = p.bg_soft })
hi("TelescopeResultsBorder", { fg = p.fern, bg = p.bg_soft })
hi("TelescopeResultsTitle", { fg = p.sage, bg = p.bg_soft })
hi("TelescopeResultsMatching", { fg = p.lime, bold = true })
hi("TelescopeSelection", { fg = p.fg_hard, bg = p.bg1, bold = true })
hi("TelescopeSelectionCaret", { fg = p.green, bg = p.bg1 })
hi("TelescopeMultiSelection", { fg = p.moss, bg = p.bg1 })

-- ── nvim-cmp ──────────────────────────────────────────────────────────────
hi("CmpItemAbbr", { fg = p.fg })
hi("CmpItemAbbrDeprecated", { fg = p.fg3, strikethrough = true })
hi("CmpItemAbbrMatch", { fg = p.lime, bold = true })
hi("CmpItemAbbrMatchFuzzy", { fg = p.lime, underline = true })
hi("CmpItemKind", { fg = p.fern })
hi("CmpItemMenu", { fg = p.fg4, italic = true })

hi("CmpItemKindText", { fg = p.fg2 })
hi("CmpItemKindMethod", { fg = p.lime })
hi("CmpItemKindFunction", { fg = p.lime })
hi("CmpItemKindConstructor", { fg = p.sage })
hi("CmpItemKindField", { fg = p.fg_soft })
hi("CmpItemKindVariable", { fg = p.fg })
hi("CmpItemKindClass", { fg = p.sage })
hi("CmpItemKindInterface", { fg = p.sage })
hi("CmpItemKindModule", { fg = p.sage })
hi("CmpItemKindProperty", { fg = p.fg_soft })
hi("CmpItemKindUnit", { fg = p.forest })
hi("CmpItemKindValue", { fg = p.forest })
hi("CmpItemKindEnum", { fg = p.sage })
hi("CmpItemKindKeyword", { fg = p.green })
hi("CmpItemKindSnippet", { fg = p.aqua })
hi("CmpItemKindColor", { fg = p.purple })
hi("CmpItemKindFile", { fg = p.fg2 })
hi("CmpItemKindReference", { fg = p.blue })
hi("CmpItemKindFolder", { fg = p.lime })
hi("CmpItemKindEnumMember", { fg = p.forest })
hi("CmpItemKindConstant", { fg = p.forest })
hi("CmpItemKindStruct", { fg = p.sage })
hi("CmpItemKindEvent", { fg = p.red })
hi("CmpItemKindOperator", { fg = p.green })
hi("CmpItemKindTypeParameter", { fg = p.sage })

-- ── nvim-tree / neo-tree ──────────────────────────────────────────────────
hi("NvimTreeNormal", { fg = p.fg, bg = p.bg_hard })
hi("NvimTreeEndOfBuffer", { fg = p.invisible, bg = p.bg_hard })
hi("NvimTreeRootFolder", { fg = p.lime, bold = true })
hi("NvimTreeFolderName", { fg = p.lime })
hi("NvimTreeOpenedFolderName", { fg = p.lime, bold = true })
hi("NvimTreeEmptyFolderName", { fg = p.fg3 })
hi("NvimTreeFolderIcon", { fg = p.fern })
hi("NvimTreeFileIcon", { fg = p.fg2 })
hi("NvimTreeFileName", { fg = p.fg })
hi("NvimTreeOpenedFile", { fg = p.lime, underline = true })
hi("NvimTreeGitDirty", { fg = p.amber })
hi("NvimTreeGitStaged", { fg = p.green })
hi("NvimTreeGitMerge", { fg = p.red })
hi("NvimTreeGitNew", { fg = p.lime })
hi("NvimTreeGitDeleted", { fg = p.red })
hi("NvimTreeSpecialFile", { fg = p.aqua, underline = true })
hi("NvimTreeIndentMarker", { fg = p.bg3 })

-- ── Which-key ─────────────────────────────────────────────────────────────
hi("WhichKey", { fg = p.lime })
hi("WhichKeyGroup", { fg = p.sage, bold = true })
hi("WhichKeyDesc", { fg = p.fg })
hi("WhichKeySeparator", { fg = p.fg4 })
hi("WhichKeyFloat", { bg = p.bg_soft })
hi("WhichKeyBorder", { fg = p.fern, bg = p.bg_soft })
hi("WhichKeyValue", { fg = p.fg3 })

-- ── indent-blankline ──────────────────────────────────────────────────────
hi("IblIndent", { fg = p.invisible })
hi("IblScope", { fg = p.bg4 })
hi("IndentBlanklineChar", { fg = p.invisible })
hi("IndentBlanklineContextChar", { fg = p.bg4 })

-- ── Noice / Notify ────────────────────────────────────────────────────────
hi("NoiceCmdline", { fg = p.fg, bg = p.bg_soft })
hi("NoiceCmdlineIcon", { fg = p.green })
hi("NoiceCmdlineIconSearch", { fg = p.amber })
hi("NoiceCmdlinePopupBorder", { fg = p.fern })
hi("NotifyERRORTitle", { fg = p.red, bold = true })
hi("NotifyWARNTitle", { fg = p.amber, bold = true })
hi("NotifyINFOTitle", { fg = p.blue, bold = true })
hi("NotifyDEBUGTitle", { fg = p.fg3, bold = true })
hi("NotifyERRORIcon", { fg = p.red })
hi("NotifyWARNIcon", { fg = p.amber })
hi("NotifyINFOIcon", { fg = p.blue })
hi("NotifyERRORBorder", { fg = p.red_dim })
hi("NotifyWARNBorder", { fg = p.amber_dim })
hi("NotifyINFOBorder", { fg = p.fern })
hi("NotifyERRORBody", { fg = p.fg })
hi("NotifyWARNBody", { fg = p.fg })
hi("NotifyINFOBody", { fg = p.fg })

-- ── Mini.nvim (statusline, tabline etc.) ──────────────────────────────────
hi("MiniStatuslineModeNormal", { fg = p.bg, bg = p.green, bold = true })
hi("MiniStatuslineModeInsert", { fg = p.bg, bg = p.lime, bold = true })
hi("MiniStatuslineModeVisual", { fg = p.bg, bg = p.sage, bold = true })
hi("MiniStatuslineModeReplace", { fg = p.bg, bg = p.red, bold = true })
hi("MiniStatuslineModeCommand", { fg = p.bg, bg = p.amber, bold = true })
hi("MiniStatuslineFilename", { fg = p.fg, bg = p.bg3 })
hi("MiniStatuslineFileinfo", { fg = p.fg3, bg = p.bg3 })
hi("MiniStatuslineDevinfo", { fg = p.fg3, bg = p.bg3 })
hi("MiniStatuslineInactive", { fg = p.fg4, bg = p.bg_hard })

hi("MiniTablineTabpagesection", { fg = p.fg, bg = p.bg3 })
hi("MiniTablineCurrent", { fg = p.fg_hard, bg = p.bg, bold = true })
hi("MiniTablineHidden", { fg = p.fg3, bg = p.bg_hard })
hi("MiniTablineModifiedCurrent", { fg = p.amber, bg = p.bg, bold = true })
hi("MiniTablineModifiedHidden", { fg = p.amber_dim, bg = p.bg_hard })

hi("MiniJump", { fg = p.bg, bg = p.lime, bold = true })
hi("MiniJump2dSpot", { fg = p.green, bg = p.bg, bold = true })
hi("MiniJump2dSpotAhead", { fg = p.lime, bg = p.bg })
hi("MiniCursorword", { bg = p.bg2, underline = true })
hi("MiniCursorwordCurrent", { bg = p.bg2, underline = true })
hi("MiniStarterHeader", { fg = p.lime, bold = true })
hi("MiniStarterFooter", { fg = p.fg4, italic = true })
hi("MiniStarterItem", { fg = p.fg })
hi("MiniStarterItemBullet", { fg = p.fern })
hi("MiniStarterItemPrefix", { fg = p.lime })
hi("MiniStarterSection", { fg = p.green, bold = true })

-- ── Rainbow delimiters ────────────────────────────────────────────────────
hi("RainbowDelimiterGreen", { fg = p.green })
hi("RainbowDelimiterLime", { fg = p.lime })
hi("RainbowDelimiterSage", { fg = p.sage })
hi("RainbowDelimiterAqua", { fg = p.aqua })
hi("RainbowDelimiterBlue", { fg = p.blue })
hi("RainbowDelimiterViolet", { fg = p.purple })
hi("RainbowDelimiterAmber", { fg = p.amber })
