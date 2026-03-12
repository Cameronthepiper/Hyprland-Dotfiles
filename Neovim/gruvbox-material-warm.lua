-- gruvbox-material-warm.lua
-- A medium-dark warm grey Gruvbox for Neovim — drop into:
--   ~/.config/nvim/colors/gruvbox-material-warm.lua
-- Then set in your LazyVim config:
--   vim.cmd("colorscheme gruvbox-material-warm")

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end
vim.o.background = "dark"
vim.g.colors_name = "gruvbox-material-warm"

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- ── Palette ───────────────────────────────────────────────────────────────
local p = {
  -- Backgrounds (warm grey, Material medium-dark brightness)
  bg_hard   = "#28262a",
  bg        = "#32302f",
  bg_soft   = "#3a3735",
  bg1       = "#45403d",   -- selection / visual
  bg2       = "#504945",   -- cursor line
  bg3       = "#5a5248",   -- splits / columns
  bg4       = "#665c54",   -- inactive statusline

  -- Foregrounds (classic Gruvbox cream)
  fg_hard   = "#fbf1c7",
  fg        = "#ebdbb2",
  fg_soft   = "#d5c4a1",
  fg1       = "#bdae93",
  fg2       = "#a89984",
  fg3       = "#928374",
  fg4       = "#7c6f64",

  -- Classic Gruvbox accents
  yellow    = "#d79921",   -- keywords
  yellow_br = "#fabd2f",   -- bright yellow / search
  orange    = "#fe8019",   -- functions
  orange_dk = "#d65d0e",   -- numbers
  red       = "#cc241d",   -- errors (dark)
  red_br    = "#fb4934",   -- errors (bright)
  red_dim   = "#9d0006",   -- diff delete bg
  green     = "#98971a",   -- strings (dark)
  green_br  = "#b8bb26",   -- strings (bright)
  blue      = "#458588",   -- special / macro
  blue_br   = "#83a598",   -- types / builtins
  purple    = "#b16286",   -- parameters / tags
  purple_br = "#d3869b",   -- bright purple
  aqua      = "#689d6a",   -- builtins (dark)
  aqua_br   = "#8ec07c",   -- builtins (bright)

  -- Comments
  comment   = "#665c54",
  invisible = "#45403d",

  none      = "NONE",
}

-- ── Editor chrome ─────────────────────────────────────────────────────────
hi("Normal",          { fg = p.fg,       bg = p.bg })
hi("NormalNC",        { fg = p.fg1,      bg = p.bg_hard })
hi("NormalFloat",     { fg = p.fg,       bg = p.bg_soft })
hi("FloatBorder",     { fg = p.blue,     bg = p.bg_soft })
hi("FloatTitle",      { fg = p.yellow,   bg = p.bg_soft, bold = true })

hi("Cursor",          { fg = p.bg,       bg = p.yellow })
hi("CursorIM",        { fg = p.bg,       bg = p.yellow_br })
hi("CursorLine",      { bg = p.bg2 })
hi("CursorLineNr",    { fg = p.yellow,   bg = p.bg2,   bold = true })
hi("CursorColumn",    { bg = p.bg2 })

hi("LineNr",          { fg = p.fg4 })
hi("SignColumn",      { fg = p.fg3,      bg = p.bg })
hi("ColorColumn",     { bg = p.bg3 })
hi("Conceal",         { fg = p.fg4 })

hi("Visual",          { bg = p.bg1 })
hi("VisualNOS",       { bg = p.bg1,      underline = true })
hi("Search",          { fg = p.bg,       bg = p.yellow_br, bold = true })
hi("IncSearch",       { fg = p.bg,       bg = p.orange,    bold = true })
hi("CurSearch",       { fg = p.bg,       bg = p.orange,    bold = true })
hi("Substitute",      { fg = p.bg,       bg = p.yellow })

hi("StatusLine",      { fg = p.fg_soft,  bg = p.bg3,   bold = true })
hi("StatusLineNC",    { fg = p.fg4,      bg = p.bg4 })
hi("TabLine",         { fg = p.fg3,      bg = p.bg3 })
hi("TabLineSel",      { fg = p.fg_hard,  bg = p.bg,    bold = true })
hi("TabLineFill",     { bg = p.bg_hard })

hi("WinBar",          { fg = p.fg2,      bg = p.bg_soft, bold = true })
hi("WinBarNC",        { fg = p.fg4,      bg = p.bg_hard })
hi("WinSeparator",    { fg = p.bg3 })
hi("VertSplit",        { fg = p.bg3 })

hi("Folded",          { fg = p.fg3,      bg = p.bg_soft, italic = true })
hi("FoldColumn",      { fg = p.blue,     bg = p.bg })

hi("Pmenu",           { fg = p.fg_soft,  bg = p.bg_soft })
hi("PmenuSel",        { fg = p.bg,       bg = p.yellow,  bold = true })
hi("PmenuSbar",       { bg = p.bg3 })
hi("PmenuThumb",      { bg = p.blue })
hi("PmenuMatch",      { fg = p.yellow_br, bg = p.bg_soft, bold = true })
hi("PmenuMatchSel",   { fg = p.bg,       bg = p.yellow,  bold = true })

hi("WildMenu",        { fg = p.bg,       bg = p.yellow, bold = true })

hi("MatchParen",      { fg = p.yellow_br, bg = p.bg1,   bold = true })

hi("NonText",         { fg = p.invisible })
hi("SpecialKey",      { fg = p.bg3 })
hi("Whitespace",      { fg = p.invisible })
hi("EndOfBuffer",     { fg = p.invisible })

hi("Directory",       { fg = p.green_br, bold = true })
hi("Title",           { fg = p.green_br, bold = true })
hi("Question",        { fg = p.yellow })
hi("MoreMsg",         { fg = p.yellow })
hi("ModeMsg",         { fg = p.fg,       bold = true })
hi("MsgArea",         { fg = p.fg_soft })
hi("MsgSeparator",    { bg = p.bg3 })
hi("ErrorMsg",        { fg = p.red_br,   bold = true })
hi("WarningMsg",      { fg = p.orange })

hi("SpellBad",        { sp = p.red_br,   undercurl = true })
hi("SpellCap",        { sp = p.blue_br,  undercurl = true })
hi("SpellRare",       { sp = p.purple,   undercurl = true })
hi("SpellLocal",      { sp = p.aqua_br,  undercurl = true })

hi("QuickFixLine",    { fg = p.yellow,   bold = true })
hi("qfLineNr",        { fg = p.fg3 })

-- ── Syntax ────────────────────────────────────────────────────────────────
hi("Comment",         { fg = p.comment,  italic = true })
hi("SpecialComment",  { fg = p.blue,     italic = true })
hi("Todo",            { fg = p.orange,   bg = p.bg_soft, bold = true })
hi("Note",            { fg = p.blue_br,  bold = true })
hi("Fixme",           { fg = p.red_br,   bold = true })

hi("Constant",        { fg = p.purple_br })
hi("String",          { fg = p.green_br })
hi("Character",       { fg = p.green_br })
hi("Number",          { fg = p.orange_dk })
hi("Float",           { fg = p.orange_dk })
hi("Boolean",         { fg = p.purple_br })

hi("Identifier",      { fg = p.fg })
hi("Function",        { fg = p.orange })
hi("Method",          { fg = p.orange })

hi("Statement",       { fg = p.yellow,   bold = true })
hi("Conditional",     { fg = p.yellow,   bold = true })
hi("Repeat",          { fg = p.yellow,   bold = true })
hi("Label",           { fg = p.yellow })
hi("Operator",        { fg = p.yellow_br })
hi("Keyword",         { fg = p.yellow,   bold = true })
hi("Exception",       { fg = p.red_br })

hi("PreProc",         { fg = p.aqua_br })
hi("Include",         { fg = p.aqua_br })
hi("Define",          { fg = p.aqua_br })
hi("Macro",           { fg = p.aqua_br })
hi("PreCondit",       { fg = p.aqua_br })

hi("Type",            { fg = p.blue_br })
hi("StorageClass",    { fg = p.blue_br })
hi("Structure",       { fg = p.blue_br })
hi("Typedef",         { fg = p.blue_br })

hi("Special",         { fg = p.orange })
hi("SpecialChar",     { fg = p.orange })
hi("Tag",             { fg = p.purple_br })
hi("Delimiter",       { fg = p.fg3 })
hi("Debug",           { fg = p.red_br })

hi("Underlined",      { underline = true })
hi("Ignore",          { fg = p.invisible })
hi("Error",           { fg = p.red_br,   bold = true })

-- ── Treesitter ────────────────────────────────────────────────────────────
hi("@variable",                    { fg = p.fg })
hi("@variable.builtin",            { fg = p.blue_br,   italic = true })
hi("@variable.parameter",          { fg = p.purple_br })
hi("@variable.member",             { fg = p.fg_soft })

hi("@constant",                    { fg = p.purple_br })
hi("@constant.builtin",            { fg = p.purple_br, bold = true })
hi("@constant.macro",              { fg = p.aqua_br })

hi("@module",                      { fg = p.blue_br })
hi("@module.builtin",              { fg = p.blue_br,   bold = true })
hi("@label",                       { fg = p.yellow })

hi("@string",                      { fg = p.green_br })
hi("@string.documentation",        { fg = p.fg3,       italic = true })
hi("@string.regexp",               { fg = p.aqua_br })
hi("@string.escape",               { fg = p.orange })
hi("@string.special",              { fg = p.orange })
hi("@string.special.url",          { fg = p.blue_br,   underline = true })

hi("@character",                   { fg = p.green_br })
hi("@number",                      { fg = p.orange_dk })
hi("@number.float",                { fg = p.orange_dk })
hi("@boolean",                     { fg = p.purple_br, bold = true })

hi("@type",                        { fg = p.blue_br })
hi("@type.builtin",                { fg = p.blue_br,   bold = true })
hi("@type.definition",             { fg = p.blue_br })

hi("@attribute",                   { fg = p.aqua_br })
hi("@property",                    { fg = p.fg_soft })

hi("@function",                    { fg = p.orange })
hi("@function.builtin",            { fg = p.orange,    bold = true })
hi("@function.call",               { fg = p.orange })
hi("@function.macro",              { fg = p.aqua_br })
hi("@function.method",             { fg = p.orange })
hi("@function.method.call",        { fg = p.orange })

hi("@constructor",                 { fg = p.blue_br })
hi("@operator",                    { fg = p.yellow_br })

hi("@keyword",                     { fg = p.yellow,    bold = true })
hi("@keyword.function",            { fg = p.yellow,    bold = true })
hi("@keyword.operator",            { fg = p.yellow_br })
hi("@keyword.import",              { fg = p.aqua_br })
hi("@keyword.storage",             { fg = p.blue_br })
hi("@keyword.repeat",              { fg = p.yellow,    bold = true })
hi("@keyword.return",              { fg = p.red_br })
hi("@keyword.exception",           { fg = p.red_br })
hi("@keyword.conditional",         { fg = p.yellow,    bold = true })
hi("@keyword.conditional.ternary", { fg = p.yellow })
hi("@keyword.directive",           { fg = p.aqua_br })
hi("@keyword.coroutine",           { fg = p.aqua_br })

hi("@punctuation.delimiter",       { fg = p.fg3 })
hi("@punctuation.bracket",         { fg = p.fg3 })
hi("@punctuation.special",         { fg = p.orange })

hi("@comment",                     { fg = p.comment,   italic = true })
hi("@comment.documentation",       { fg = p.fg3,       italic = true })
hi("@comment.error",               { fg = p.red_br,    bold = true })
hi("@comment.warning",             { fg = p.orange,    bold = true })
hi("@comment.todo",                { fg = p.orange,    bold = true })
hi("@comment.note",                { fg = p.blue_br,   bold = true })

hi("@markup.heading",              { fg = p.yellow_br, bold = true })
hi("@markup.heading.1",            { fg = p.yellow,    bold = true })
hi("@markup.heading.2",            { fg = p.orange,    bold = true })
hi("@markup.heading.3",            { fg = p.green_br,  bold = true })
hi("@markup.raw",                  { fg = p.green_br })
hi("@markup.raw.block",            { fg = p.green_br,  bg = p.bg_soft })
hi("@markup.link",                 { fg = p.blue_br,   underline = true })
hi("@markup.link.label",           { fg = p.aqua_br })
hi("@markup.link.url",             { fg = p.blue_br,   underline = true, italic = true })
hi("@markup.italic",               { italic = true })
hi("@markup.strong",               { bold = true })
hi("@markup.strikethrough",        { strikethrough = true })
hi("@markup.list",                 { fg = p.orange })
hi("@markup.list.checked",         { fg = p.green_br })
hi("@markup.list.unchecked",       { fg = p.fg4 })

hi("@diff.plus",                   { fg = p.green_br })
hi("@diff.minus",                  { fg = p.red_br })
hi("@diff.delta",                  { fg = p.orange })

hi("@tag",                         { fg = p.blue_br })
hi("@tag.builtin",                 { fg = p.aqua_br })
hi("@tag.attribute",               { fg = p.purple_br })
hi("@tag.delimiter",               { fg = p.fg3 })

-- ── LSP ───────────────────────────────────────────────────────────────────
hi("DiagnosticError",              { fg = p.red_br })
hi("DiagnosticWarn",               { fg = p.orange })
hi("DiagnosticInfo",               { fg = p.blue_br })
hi("DiagnosticHint",               { fg = p.aqua_br })
hi("DiagnosticOk",                 { fg = p.green_br })

hi("DiagnosticVirtualTextError",   { fg = p.red_br,    bg = p.bg_soft, italic = true })
hi("DiagnosticVirtualTextWarn",    { fg = p.orange,    bg = p.bg_soft, italic = true })
hi("DiagnosticVirtualTextInfo",    { fg = p.blue_br,   bg = p.bg_soft, italic = true })
hi("DiagnosticVirtualTextHint",    { fg = p.aqua_br,   bg = p.bg_soft, italic = true })

hi("DiagnosticUnderlineError",     { sp = p.red_br,    undercurl = true })
hi("DiagnosticUnderlineWarn",      { sp = p.orange,    undercurl = true })
hi("DiagnosticUnderlineInfo",      { sp = p.blue_br,   undercurl = true })
hi("DiagnosticUnderlineHint",      { sp = p.aqua_br,   undercurl = true })

hi("LspReferenceText",             { bg = p.bg1 })
hi("LspReferenceRead",             { bg = p.bg1 })
hi("LspReferenceWrite",            { bg = p.bg1,       underline = true })
hi("LspSignatureActiveParameter",  { fg = p.orange,    bold = true, underline = true })
hi("LspCodeLens",                  { fg = p.comment,   italic = true })
hi("LspInlayHint",                 { fg = p.fg4,       bg = p.bg_soft, italic = true })

hi("@lsp.type.class",              { link = "@type" })
hi("@lsp.type.decorator",          { link = "@attribute" })
hi("@lsp.type.enum",               { link = "@type" })
hi("@lsp.type.enumMember",         { link = "@constant" })
hi("@lsp.type.function",           { link = "@function" })
hi("@lsp.type.interface",          { link = "@type" })
hi("@lsp.type.macro",              { link = "@function.macro" })
hi("@lsp.type.method",             { link = "@function.method" })
hi("@lsp.type.namespace",          { link = "@module" })
hi("@lsp.type.parameter",          { link = "@variable.parameter" })
hi("@lsp.type.property",           { link = "@property" })
hi("@lsp.type.struct",             { link = "@type" })
hi("@lsp.type.type",               { link = "@type" })
hi("@lsp.type.typeParameter",      { link = "@type" })
hi("@lsp.type.variable",           { link = "@variable" })

hi("@lsp.mod.deprecated",          { strikethrough = true })
hi("@lsp.mod.readonly",            { italic = true })

-- ── Git / Diff ────────────────────────────────────────────────────────────
hi("DiffAdd",                      { fg = p.green_br,  bg = "#2a2f1e" })
hi("DiffChange",                   { fg = p.orange,    bg = "#2e2a1a" })
hi("DiffDelete",                   { fg = p.red_br,    bg = "#2e1a1a" })
hi("DiffText",                     { fg = p.yellow,    bg = "#3a3010", bold = true })

hi("GitSignsAdd",                  { fg = p.green_br })
hi("GitSignsChange",               { fg = p.orange })
hi("GitSignsDelete",               { fg = p.red_br })
hi("GitSignsAddNr",                { fg = p.green_br })
hi("GitSignsChangeNr",             { fg = p.orange })
hi("GitSignsDeleteNr",             { fg = p.red_br })
hi("GitSignsAddLn",                { bg = "#2a2f1e" })
hi("GitSignsChangeLn",             { bg = "#2e2a1a" })

-- ── Telescope ─────────────────────────────────────────────────────────────
hi("TelescopeNormal",              { fg = p.fg,        bg = p.bg_soft })
hi("TelescopeBorder",              { fg = p.blue,      bg = p.bg_soft })
hi("TelescopeTitle",               { fg = p.yellow,    bg = p.bg_soft, bold = true })
hi("TelescopePromptNormal",        { fg = p.fg,        bg = p.bg1 })
hi("TelescopePromptBorder",        { fg = p.yellow,    bg = p.bg1 })
hi("TelescopePromptTitle",         { fg = p.bg,        bg = p.yellow,  bold = true })
hi("TelescopePromptPrefix",        { fg = p.yellow })
hi("TelescopePromptCounter",       { fg = p.fg3 })
hi("TelescopeResultsNormal",       { fg = p.fg,        bg = p.bg_soft })
hi("TelescopeResultsBorder",       { fg = p.blue,      bg = p.bg_soft })
hi("TelescopeResultsTitle",        { fg = p.blue_br,   bg = p.bg_soft })
hi("TelescopeResultsMatching",     { fg = p.yellow_br, bold = true })
hi("TelescopeSelection",           { fg = p.fg_hard,   bg = p.bg1,     bold = true })
hi("TelescopeSelectionCaret",      { fg = p.yellow,    bg = p.bg1 })
hi("TelescopeMultiSelection",      { fg = p.orange,    bg = p.bg1 })

-- ── nvim-cmp ──────────────────────────────────────────────────────────────
hi("CmpItemAbbr",                  { fg = p.fg })
hi("CmpItemAbbrDeprecated",        { fg = p.fg3,       strikethrough = true })
hi("CmpItemAbbrMatch",             { fg = p.yellow_br, bold = true })
hi("CmpItemAbbrMatchFuzzy",        { fg = p.yellow_br, underline = true })
hi("CmpItemKind",                  { fg = p.blue })
hi("CmpItemMenu",                  { fg = p.fg4,       italic = true })

hi("CmpItemKindText",              { fg = p.fg2 })
hi("CmpItemKindMethod",            { fg = p.orange })
hi("CmpItemKindFunction",          { fg = p.orange })
hi("CmpItemKindConstructor",       { fg = p.blue_br })
hi("CmpItemKindField",             { fg = p.fg_soft })
hi("CmpItemKindVariable",          { fg = p.fg })
hi("CmpItemKindClass",             { fg = p.blue_br })
hi("CmpItemKindInterface",         { fg = p.blue_br })
hi("CmpItemKindModule",            { fg = p.blue_br })
hi("CmpItemKindProperty",          { fg = p.fg_soft })
hi("CmpItemKindUnit",              { fg = p.orange_dk })
hi("CmpItemKindValue",             { fg = p.orange_dk })
hi("CmpItemKindEnum",              { fg = p.blue_br })
hi("CmpItemKindKeyword",           { fg = p.yellow })
hi("CmpItemKindSnippet",           { fg = p.aqua_br })
hi("CmpItemKindColor",             { fg = p.purple_br })
hi("CmpItemKindFile",              { fg = p.fg2 })
hi("CmpItemKindReference",         { fg = p.blue_br })
hi("CmpItemKindFolder",            { fg = p.yellow })
hi("CmpItemKindEnumMember",        { fg = p.purple_br })
hi("CmpItemKindConstant",          { fg = p.purple_br })
hi("CmpItemKindStruct",            { fg = p.blue_br })
hi("CmpItemKindEvent",             { fg = p.red_br })
hi("CmpItemKindOperator",          { fg = p.yellow_br })
hi("CmpItemKindTypeParameter",     { fg = p.blue_br })

-- ── nvim-tree ─────────────────────────────────────────────────────────────
hi("NvimTreeNormal",               { fg = p.fg,        bg = p.bg_hard })
hi("NvimTreeEndOfBuffer",          { fg = p.invisible, bg = p.bg_hard })
hi("NvimTreeRootFolder",           { fg = p.yellow,    bold = true })
hi("NvimTreeFolderName",           { fg = p.yellow })
hi("NvimTreeOpenedFolderName",     { fg = p.yellow,    bold = true })
hi("NvimTreeEmptyFolderName",      { fg = p.fg3 })
hi("NvimTreeFolderIcon",           { fg = p.orange })
hi("NvimTreeFileIcon",             { fg = p.fg2 })
hi("NvimTreeFileName",             { fg = p.fg })
hi("NvimTreeOpenedFile",           { fg = p.yellow,    underline = true })
hi("NvimTreeGitDirty",             { fg = p.orange })
hi("NvimTreeGitStaged",            { fg = p.green_br })
hi("NvimTreeGitMerge",             { fg = p.red_br })
hi("NvimTreeGitNew",               { fg = p.yellow_br })
hi("NvimTreeGitDeleted",           { fg = p.red_br })
hi("NvimTreeSpecialFile",          { fg = p.aqua_br,   underline = true })
hi("NvimTreeIndentMarker",         { fg = p.bg3 })

-- ── Which-key ─────────────────────────────────────────────────────────────
hi("WhichKey",                     { fg = p.yellow })
hi("WhichKeyGroup",                { fg = p.orange,    bold = true })
hi("WhichKeyDesc",                 { fg = p.fg })
hi("WhichKeySeparator",            { fg = p.fg4 })
hi("WhichKeyFloat",                { bg = p.bg_soft })
hi("WhichKeyBorder",               { fg = p.blue,      bg = p.bg_soft })
hi("WhichKeyValue",                { fg = p.fg3 })

-- ── indent-blankline ──────────────────────────────────────────────────────
hi("IblIndent",                    { fg = p.invisible })
hi("IblScope",                     { fg = p.bg4 })
hi("IndentBlanklineChar",          { fg = p.invisible })
hi("IndentBlanklineContextChar",   { fg = p.bg4 })

-- ── Noice / Notify ────────────────────────────────────────────────────────
hi("NoiceCmdline",                 { fg = p.fg,        bg = p.bg_soft })
hi("NoiceCmdlineIcon",             { fg = p.yellow })
hi("NoiceCmdlineIconSearch",       { fg = p.orange })
hi("NoiceCmdlinePopupBorder",      { fg = p.blue })
hi("NotifyERRORTitle",             { fg = p.red_br,    bold = true })
hi("NotifyWARNTitle",              { fg = p.orange,    bold = true })
hi("NotifyINFOTitle",              { fg = p.blue_br,   bold = true })
hi("NotifyDEBUGTitle",             { fg = p.fg3,       bold = true })
hi("NotifyERRORIcon",              { fg = p.red_br })
hi("NotifyWARNIcon",               { fg = p.orange })
hi("NotifyINFOIcon",               { fg = p.blue_br })
hi("NotifyERRORBorder",            { fg = p.red_dim })
hi("NotifyWARNBorder",             { fg = p.orange_dk })
hi("NotifyINFOBorder",             { fg = p.blue })
hi("NotifyERRORBody",              { fg = p.fg })
hi("NotifyWARNBody",               { fg = p.fg })
hi("NotifyINFOBody",               { fg = p.fg })

-- ── Mini.nvim ─────────────────────────────────────────────────────────────
hi("MiniStatuslineModeNormal",     { fg = p.bg,        bg = p.yellow,  bold = true })
hi("MiniStatuslineModeInsert",     { fg = p.bg,        bg = p.green_br, bold = true })
hi("MiniStatuslineModeVisual",     { fg = p.bg,        bg = p.orange,  bold = true })
hi("MiniStatuslineModeReplace",    { fg = p.bg,        bg = p.red_br,  bold = true })
hi("MiniStatuslineModeCommand",    { fg = p.bg,        bg = p.aqua_br, bold = true })
hi("MiniStatuslineFilename",       { fg = p.fg,        bg = p.bg3 })
hi("MiniStatuslineFileinfo",       { fg = p.fg3,       bg = p.bg3 })
hi("MiniStatuslineDevinfo",        { fg = p.fg3,       bg = p.bg3 })
hi("MiniStatuslineInactive",       { fg = p.fg4,       bg = p.bg_hard })

hi("MiniTablineTabpagesection",    { fg = p.fg,        bg = p.bg3 })
hi("MiniTablineCurrent",           { fg = p.fg_hard,   bg = p.bg,    bold = true })
hi("MiniTablineHidden",            { fg = p.fg3,       bg = p.bg_hard })
hi("MiniTablineModifiedCurrent",   { fg = p.orange,    bg = p.bg,    bold = true })
hi("MiniTablineModifiedHidden",    { fg = p.orange_dk, bg = p.bg_hard })

hi("MiniJump",                     { fg = p.bg,        bg = p.yellow_br, bold = true })
hi("MiniJump2dSpot",               { fg = p.yellow,    bg = p.bg,    bold = true })
hi("MiniJump2dSpotAhead",          { fg = p.orange,    bg = p.bg })
hi("MiniCursorword",               { bg = p.bg2,       underline = true })
hi("MiniCursorwordCurrent",        { bg = p.bg2,       underline = true })
hi("MiniStarterHeader",            { fg = p.yellow,    bold = true })
hi("MiniStarterFooter",            { fg = p.fg4,       italic = true })
hi("MiniStarterItem",              { fg = p.fg })
hi("MiniStarterItemBullet",        { fg = p.orange })
hi("MiniStarterItemPrefix",        { fg = p.yellow })
hi("MiniStarterSection",           { fg = p.yellow,    bold = true })

-- ── Rainbow delimiters ────────────────────────────────────────────────────
hi("RainbowDelimiterYellow",       { fg = p.yellow })
hi("RainbowDelimiterOrange",       { fg = p.orange })
hi("RainbowDelimiterGreen",        { fg = p.green_br })
hi("RainbowDelimiterBlue",         { fg = p.blue_br })
hi("RainbowDelimiterAqua",         { fg = p.aqua_br })
hi("RainbowDelimiterViolet",       { fg = p.purple_br })
hi("RainbowDelimiterRed",          { fg = p.red_br })
