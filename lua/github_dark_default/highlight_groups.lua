local colors = require("github_dark_default.palette")
local term_supports_undercurl = require("github_dark_default").term_supports_undercurl

local M = {}

--- @overload fun(config: Config)
function M.get(config)
    local diagnostic = {
        error = colors.red_02,
        warn = colors.yellow_01,
        info = colors.cyan_02,
        hint = colors.blue_01,
        unnecessary = colors.fg_04,
    }

    local git = {
        signs = {
            add = colors.green_01,
            delete = colors.red_02,
            change = colors.yellow_01,
        },
        status = {
            -- ignored = colors.fg_05,
            ignored = colors.fg_07,
            untracked = colors.green_01,
            staged = colors.green_01,
            deleted = colors.red_02,
            modified = colors.yellow_01,
        },
        -- diff = {
        --     add = colors.green_04,
        --     change = colors.green_03,
        --     delete = colors.red_01,
        --     text = colors.green_04,
        -- },
    }

    return {
        -- Editor

        ["Conceal"] = { bg = colors.bg_05 },
        ["Cursor"] = { bg = colors.bg, fg = colors.fg },
        ["CursorIM"] = { bg = colors.bg, fg = colors.fg },
        -- ["CursorLine"] = {
        --     bg = config.transparent_background and colors.none or (config.cursorline and colors.bg_04 or colors.none),
        -- },
        ["CursorLine"] = {
            bg = (config.cursorline and colors.bg_04 or colors.none),
        },
        ["CursorLineNr"] = {
            bg = config.transparent_background and colors.none or (config.cursorline and colors.bg_04 or colors.none),
            fg = colors.fg,
        },
        ["Directory"] = { fg = colors.yellow_02 },
        -- ["DiffAdd"] = { bg = git.diff.add },
        -- ["DiffChange"] = { bg = git.diff.change },
        -- ["DiffDelete"] = { bg = git.diff.delete },
        -- ["DiffText"] = { bg = git.diff.text },
        ["EndOfBuffer"] = { fg = colors.bg },
        ["Error"] = { fg = diagnostic.error },
        ["ErrorMsg"] = { fg = diagnostic.error },
        ["FoldColumn"] = { bg = colors.bg, fg = colors.bg },
        ["Folded"] = { bg = colors.blue_05 },
        ["FloatBorder"] = {
            bg = config.transparent_background and colors.none or colors.bg_09,
            fg = config.transparent_background and colors.fg_06 or colors.bg_09,
        },
        ["lCursor"] = { bg = colors.bg, fg = colors.fg },
        ["LineNr"] = {
            bg = config.transparent_background and colors.none or colors.bg,
            fg = colors.fg_01,
        },
        ["Normal"] = {
            bg = config.transparent_background and colors.none or colors.bg,
            fg = colors.fg,
        },
        ["NormalFloat"] = { bg = config.transparent_background and colors.none or colors.bg_09 },
        ["Search"] = { bg = colors.yellow_03 },
        ["SignColumn"] = { bg = colors.none },
        ["SpellBad"] = { sp = colors.red_03, undercurl = config.undercurl and term_supports_undercurl() },
        ["SpellCap"] = { sp = colors.yellow_05, undercurl = config.undercurl and term_supports_undercurl() },
        ["SpellLocal"] = { sp = colors.blue_11, undercurl = config.undercurl and term_supports_undercurl() },
        ["SpellRare"] = { sp = colors.green_05, undercurl = config.undercurl and term_supports_undercurl() },
        ["StatusLine"] = { bg = colors.none },
        ["TermCursor"] = { bg = colors.fg, fg = colors.bg },
        ["Title"] = { fg = colors.fg_15 },
        ["Visual"] = { bg = colors.blue_02 },
        ["WarningMsg"] = { fg = diagnostic.warn },
        ["WinBar"] = { fg = colors.fg_06 },
        ["WinSeparator"] = { fg = "#080A0E" },

        ------------------------------------------------------------------------------------------

        -- Pmenu

        ["Pmenu"] = { bg = colors.bg_05, fg = colors.fg_14 },
        ["PmenuSbar"] = { bg = colors.bg_05 },
        ["PmenuSel"] = { bg = colors.blue_02, fg = colors.fg_15 },
        ["PmenuThumb"] = { bg = colors.bg_06 },

        ------------------------------------------------------------------------------------------

        -- Sintax

        ["Comment"] = { fg = colors.fg_02 },

        ["Variable"] = { fg = colors.fg },
        ["Constant"] = { fg = colors.cyan_02 },
        ["String"] = { fg = colors.cyan_01 },
        ["Character"] = { fg = colors.cyan_01 },
        ["Number"] = { fg = colors.cyan_02 },
        ["Boolean"] = { fg = colors.cyan_02, italic = config.italic_keyword },
        ["Float"] = { fg = colors.cyan_02 },

        ["Identifier"] = { fg = colors.fg },
        ["Function"] = { fg = colors.purple_01 },

        ["Statement"] = { fg = colors.red_01, italic = config.italic_keyword },
        ["Conditional"] = { fg = colors.red_01, italic = config.italic_keyword },
        ["Repeat"] = { fg = colors.red_01, italic = config.italic_keyword },
        ["Label"] = { fg = colors.red_01, italic = config.italic_keyword },
        ["Operator"] = { fg = colors.red_01 },
        ["Keyword"] = { fg = colors.red_01, italic = config.italic_keyword },
        ["Exception"] = { fg = colors.red_01, italic = config.italic_keyword },

        ["PreProc"] = { fg = colors.red_01 },
        ["Include"] = { fg = colors.red_01, italic = config.italic_keyword },
        ["Define"] = { fg = colors.red_01 },
        ["Macro"] = { fg = colors.purple_01 },
        ["PreCondit"] = { fg = colors.red_01 },

        ["Type"] = { fg = colors.fg_03 },
        ["StorageClass"] = { fg = colors.fg_03 },
        ["Structure"] = { fg = colors.fg_03 },
        ["Typedef"] = { fg = colors.fg_03 },

        ["Special"] = { fg = colors.red_01 },
        ["SpecialChar"] = { fg = colors.red_01 },
        ["Tag"] = { fg = colors.green_04 },
        ["Delimiter"] = { fg = colors.red_01 },
        ["SpecialComment"] = { fg = colors.red_01 },
        ["Debug"] = { fg = colors.red_01 },

        -- ["Todo"] = { fg = colors.magenta_01 },

        ------------------------------------------------------------------------------------------

        -- nvim-treesitter/nvim-treesitter

        ["@attribute"] = { link = "@type" },
        ["@boolean"] = { fg = colors.cyan_02, italic = config.italic_keyword },
        ["@character"] = { fg = colors.cyan_01 },
        ["@character.special"] = { fg = colors.red_01 },
        ["@comment"] = { fg = colors.fg_02 },
        ["@conditional"] = { fg = colors.red_01, italic = config.italic_keyword },
        ["@constant"] = { fg = colors.cyan_02 },
        ["@constant.builtin"] = { link = "@keyword" },
        ["@constant.macro"] = { fg = colors.red_01 },
        ["@constructor"] = { fg = colors.fg_03 },
        ["@define"] = { fg = colors.red_01 },
        ["@exception"] = { fg = colors.red_01, italic = config.italic_keyword },
        ["@field"] = { fg = colors.fg },
        ["@float"] = { fg = colors.cyan_02 },
        ["@function"] = { fg = colors.purple_01 },
        ["@function.builtin"] = { fg = colors.purple_01 },
        ["@function.call"] = { fg = colors.purple_01 },
        ["@function.macro"] = { fg = colors.purple_01 },
        ["@include"] = { fg = colors.red_01, italic = config.italic_keyword },
        ["@keyword"] = { fg = colors.red_01, italic = config.italic_keyword },
        ["@keyword.return"] = { fg = colors.red_01, italic = config.italic_keyword },
        ["@label"] = { fg = colors.red_01, italic = config.italic_keyword },
        ["@macro"] = { fg = colors.purple_01 },
        ["@method"] = { fg = colors.purple_01 },
        ["@namespace"] = { fg = colors.fg },
        ["@number"] = { fg = colors.cyan_02 },
        ["@operator"] = { fg = colors.red_01 },
        ["@parameter"] = { fg = colors.fg },
        ["@punctuation"] = { fg = colors.fg },
        ["@property"] = { fg = colors.fg },
        ["@punctuation.delimiter"] = { fg = colors.fg },
        ["@repeat"] = { fg = colors.red_01, italic = config.italic_keyword },
        ["@storageclass"] = { fg = colors.fg_03, italic = config.italic_keyword },
        ["@string"] = { fg = colors.cyan_01 },
        ["@string.escape"] = { fg = colors.red_01 },
        ["@string.special"] = { fg = colors.red_01 },
        ["@tag"] = { fg = colors.green_04 },
        ["@tag.attribute"] = { fg = colors.cyan_02 },
        ["@tag.delimiter"] = { fg = colors.fg },
        ["@text.literal"] = { link = "@string" },
        ["@text.reference"] = { link = "@constant" },
        ["@text.title"] = { link = "Title" },
        ["@text.todo"] = { link = "Todo" },
        ["@text.underline"] = { underline = true },
        ["@text.uri"] = { fg = colors.cyan_01, underline = true },
        ["@type"] = { fg = colors.fg_03 },
        ["@type.builtin"] = { fg = colors.fg_03 },
        ["@type.definition"] = { fg = colors.fg_03 },
        ["@type.qualifier"] = { fg = colors.red_01, italic = config.italic_keyword },
        ["@variable"] = { fg = colors.fg },
        ["@variable.builtin"] = { link = "@variable" },

        -- CSS
        ["@property.css"] = { fg = colors.cyan_02 },
        ["@type.css"] = { fg = colors.green_04 },

        -- HTML
        ["@operator.html"] = { fg = colors.fg },

        -- Semantic Tokens
        ["@lsp.type.annotation"] = { link = "Type" },
        ["@lsp.type.boolean"] = { link = "Boolean" },
        ["@lsp.type.character"] = { link = "Character" },
        ["@lsp.type.class"] = { link = "@lsp" },
        ["@lsp.type.formatSpecifier"] = { link = "Keyword" },
        ["@lsp.type.parameter"] = { link = "Variable" },
        ["@lsp.type.property"] = { link = "Variable" },
        ["@lsp.type.method"] = { link = "Function" },
        ["@lsp.type.number"] = { link = "Number" },
        ["@lsp.type.selfKeyword"] = { link = "Keyword" },
        ["@lsp.type.selfTypeKeyword"] = { link = "Keyword" },
        ["@lsp.type.string"] = { link = "String" },
        ["@lsp.type.variable"] = { link = "Variable" },

        ["@lsp.typemod.boolean.macro"] = { link = "Boolean" },
        ["@lsp.typemod.character.macro"] = { link = "Character" },
        ["@lsp.typemod.class.constructor"] = { link = "Function" },
        ["@lsp.typemod.class.importDeclaration"] = { link = "Type" },
        ["@lsp.typemod.class.readonly"] = { link = "Type" },
        ["@lsp.typemod.enum.declaration"] = { link = "Type" },
        ["@lsp.typemod.enum.public"] = { link = "Type" },
        ["@lsp.typemod.function.declaration"] = { link = "Function" },
        ["@lsp.typemod.function.local"] = { link = "Function" },
        ["@lsp.typemod.function.macro"] = { link = "Function" },
        ["@lsp.typemod.function.readonly"] = { link = "Function" },
        ["@lsp.typemod.generic.macro"] = { link = "Variable" },
        ["@lsp.typemod.method.macro"] = { link = "Function" },
        ["@lsp.typemod.namespace.macro"] = { fg = colors.green_05 },
        ["@lsp.typemod.number.macro"] = { link = "Number" },
        ["@lsp.typemod.parameter.macro"] = { link = "Variable" },
        ["@lsp.typemod.property.macro"] = { link = "Variable" },
        ["@lsp.typemod.string.macro"] = { link = "String" },
        ["@lsp.typemod.struct.macro"] = { link = "Type" },
        ["@lsp.typemod.variable.constant"] = { link = "Constant" },
        ["@lsp.typemod.variable.macro"] = { link = "Variable" },
        ["@lsp.typemod.variable.static"] = { link = "Constant" },

        ["@lsp.mod.controlFlow"] = { fg = colors.red_01, italic = config.italic_keyword },
        ["@lsp.mod.macro"] = { link = "Macro" },
        ["@lsp.mod.mutable"] = { underline = true },
        ["@lsp.mod.readonly"] = { link = "Constant" },

        ------------------------------------------------------------------------------------------

        -- nvim-treesitter/nvim-treesitter-context

        ["TreesitterContext"] = { bg = config.transparent_background and colors.bg_10 or colors.bg_04 },
        ["TreesitterContextLineNumber"] = { bg = config.transparent_background and colors.bg_10 or colors.bg_04 },

        ------------------------------------------------------------------------------------------

        -- nvim-treesitter/playground

        ["nodeNumber"] = { link = "@number" },
        ["nodeType"] = { link = "@type" },
        ["nodeTag"] = { link = "@variable" },

        ------------------------------------------------------------------------------------------

        -- kevinhwang91/nvim-ufo

        ["UfoCursorFoldedLine"] = { bg = colors.blue_05 },
        ["UfoFoldedEllipsis"] = { fg = colors.fg_05 },

        ------------------------------------------------------------------------------------------

        -- ibhagwan/fzf-lua

        ["FzfLuaBorder"] = { fg = colors.fg_04 },

        ------------------------------------------------------------------------------------------

        -- nvim-telescope/telescope.nvim

        ["TelescopeMatching"] = { fg = colors.fg },

        ["TelescopeMultiSelection"] = { fg = colors.fg_06 },

        -- Telescope Preview
        ["TelescopePreviewBorder"] = {
            bg = config.transparent_background and colors.none or colors.bg_06,
            fg = config.transparent_background and colors.fg_06 or colors.bg_06,
        },
        ["TelescopePreviewNormal"] = { bg = config.transparent_background and colors.none or colors.bg_06 },
        ["TelescopePreviewTitle"] = {
            bg = config.transparent_background and colors.none or colors.bg_06,
            fg = colors.fg_06,
        },

        -- Telescope Prompt
        ["TelescopePromptBorder"] = {
            bg = config.transparent_background and colors.none or colors.bg_04,
            fg = config.transparent_background and colors.fg_06 or colors.bg_04,
        },
        ["TelescopePromptCounter"] = { fg = colors.fg_06 },
        ["TelescopePromptNormal"] = {
            bg = config.transparent_background and colors.none or colors.bg_04,
            fg = colors.fg_06,
        },
        ["TelescopePromptTitle"] = {
            bg = config.transparent_background and colors.none or colors.bg_04,
            fg = colors.fg_06,
        },

        -- Telescope Results
        ["TelescopeResultsBorder"] = {
            bg = config.transparent_background and colors.none or colors.bg_07,
            fg = config.transparent_background and colors.fg_06 or colors.bg_07,
        },
        ["TelescopeResultsNormal"] = {
            bg = config.transparent_background and colors.none or colors.bg_07,
            fg = colors.fg_06,
        },
        ["TelescopeResultsTitle"] = {
            bg = config.transparent_background and colors.none or colors.bg_07,
            fg = colors.fg_06,
        },

        -- Telescope Selection
        ["TelescopeSelection"] = { bg = colors.bg_06, fg = colors.fg_06 },

        ------------------------------------------------------------------------------------------

        -- neovim/nvim-lspconfig

        -- Diagnostics LSP
        ["DiagnosticBorder"] = { bg = colors.bg, fg = colors.fg_04 },
        ["DiagnosticDeprecated"] = { strikethrough = true },
        ["DiagnosticError"] = { fg = diagnostic.error },
        ["DiagnosticFloatingError"] = { fg = diagnostic.error },
        ["DiagnosticFloatingHint"] = { fg = diagnostic.hint },
        ["DiagnosticFloatingInfo"] = { fg = diagnostic.info },
        ["DiagnosticFloatingWarn"] = { fg = diagnostic.warn },
        ["DiagnosticHint"] = { fg = diagnostic.hint },
        ["DiagnosticInfo"] = { fg = diagnostic.info },
        ["DiagnosticSignError"] = { fg = diagnostic.error },
        ["DiagnosticSignHint"] = { fg = diagnostic.hint },
        ["DiagnosticSignInfo"] = { fg = diagnostic.info },
        ["DiagnosticSignWarn"] = { fg = diagnostic.warn },
        ["DiagnosticUnderlineError"] = {
            sp = diagnostic.error,
            undercurl = config.undercurl and term_supports_undercurl(),
        },
        ["DiagnosticUnderlineHint"] = {
            sp = diagnostic.hint,
            undercurl = config.undercurl and term_supports_undercurl(),
        },
        ["DiagnosticUnderlineInfo"] = {
            sp = diagnostic.info,
            undercurl = config.undercurl and term_supports_undercurl(),
        },
        ["DiagnosticUnderlineWarn"] = {
            sp = diagnostic.warn,
            undercurl = config.undercurl and term_supports_undercurl(),
        },
        ["DiagnosticUnnecessary"] = { fg = diagnostic.unnecessary },
        ["DiagnosticVirtualTextError"] = { fg = diagnostic.error },
        ["DiagnosticVirtualTextHint"] = { fg = diagnostic.hint },
        ["DiagnosticVirtualTextInfo"] = { fg = diagnostic.info },
        ["DiagnosticVirtualTextWarn"] = { fg = diagnostic.warn },
        ["DiagnosticWarn"] = { fg = diagnostic.warn },

        -- LspInfo
        ["LspInfoBorder"] = { fg = colors.fg_04 },

        -- Codelens
        ["LspCodeLens"] = { fg = colors.fg_10 },
        ["LspCodeLensSeparator"] = { fg = colors.fg_10 },

        ------------------------------------------------------------------------------------------

        -- SmiteshP/nvim-navic

        ["NavicIconsFile"] = { fg = colors.fg_14 },
        ["NavicIconsModule"] = { fg = colors.fg_14 },
        ["NavicIconsNamespace"] = { fg = colors.fg_14 },
        ["NavicIconsPackage"] = { fg = colors.fg_14 },
        ["NavicIconsClass"] = { fg = colors.orange_02 },
        ["NavicIconsMethod"] = { fg = colors.purple_01 },
        ["NavicIconsProperty"] = { fg = colors.blue_14 },
        ["NavicIconsField"] = { fg = colors.blue_14 },
        ["NavicIconsConstructor"] = { fg = colors.purple_01 },
        ["NavicIconsEnum"] = { fg = colors.orange_02 },
        ["NavicIconsInterface"] = { fg = colors.blue_14 },
        ["NavicIconsFunction"] = { fg = colors.purple_01 },
        ["NavicIconsVariable"] = { fg = colors.blue_14 },
        ["NavicIconsConstant"] = { fg = colors.fg_14 },
        ["NavicIconsString"] = { fg = colors.fg_14 },
        ["NavicIconsNumber"] = { fg = colors.fg_14 },
        ["NavicIconsBoolean"] = { fg = colors.fg_14 },
        ["NavicIconsArray"] = { fg = colors.fg_14 },
        ["NavicIconsObject"] = { fg = colors.fg_14 },
        ["NavicIconsKey"] = { fg = colors.fg_14 },
        ["NavicIconsNull"] = { fg = colors.fg_14 },
        ["NavicIconsEnumMember"] = { fg = colors.blue_14 },
        ["NavicIconsStruct"] = { fg = colors.fg_14 },
        ["NavicIconsEvent"] = { fg = colors.fg_14 },
        ["NavicIconsOperator"] = { fg = colors.fg_14 },
        ["NavicIconsTypeParameter"] = { fg = colors.fg_14 },
        ["NavicText"] = { fg = colors.fg_11 },
        ["NavicSeparator"] = { fg = colors.fg_11 },

        ------------------------------------------------------------------------------------------

        -- williamboman/mason.nvim

        ["MasonError"] = { fg = diagnostic.error },
        ["MasonWarning"] = { fg = diagnostic.warn },

        ------------------------------------------------------------------------------------------

        -- folke/trouble.nvim

        ["TroubleCode"] = { fg = colors.blue_08, underline = true },
        ["TroubleCount"] = { bg = colors.bg_10, fg = colors.fg_15 },
        ["TroubleFile"] = { fg = colors.fg_14 },
        ["TroubleFoldIcon"] = { fg = colors.fg_12 },
        ["TroubleLocation"] = { fg = colors.fg_09 },
        ["TroublePreview"] = { bg = colors.bg_09 },
        ["TroubleSignError"] = { fg = diagnostic.error },
        ["TroubleSignHint"] = { fg = diagnostic.hint },
        ["TroubleSignInformation"] = { fg = diagnostic.info },
        ["TroubleSignWarning"] = { fg = diagnostic.warn },
        ["TroubleSource"] = { fg = colors.fg_09 },
        ["TroubleTextError"] = { fg = colors.fg },
        ["TroubleTextHint"] = { fg = colors.fg },
        ["TroubleTextInformation"] = { fg = colors.fg },
        ["TroubleTextWarning"] = { fg = colors.fg },

        ------------------------------------------------------------------------------------------

        -- mfussenegger/nvim-dap
        ["DapBreakpoint"] = { fg = colors.red_04 },
        ["DapStopped"] = { fg = colors.yellow_06 },
        ["DapBreakpointRejected"] = { fg = colors.fg_06 },

        -- rcarriga/nvim-dap-ui
        ["DapUIScope"] = { fg = colors.fg_14 },
        ["DapUIVariable"] = { link = "Variable" },
        ["DapUIType"] = { link = "Type" },
        ["DapUIValue"] = { fg = colors.fg_06 },
        ["DapUIDecoration"] = { fg = colors.fg_14 },
        ["DapUIBreakpointsPath"] = { fg = colors.fg_14 },
        ["DapUILineNumber"] = { link = "LineNr" },
        ["DapUIStoppedThread"] = { fg = colors.fg_14 },
        ["DapUICurrentFrameName"] = { fg = colors.fg_14 },
        ["DapUISource"] = { fg = colors.fg_14 },
        ["DapUIThread"] = { fg = colors.fg_14 },
        ["DapUIWatchesEmpty"] = { fg = colors.fg_06 },
        ["DapUIWatchesValue"] = { fg = colors.fg_14 },

        ------------------------------------------------------------------------------------------

        -- hrsh7th/nvim-cmp

        -- ["CmpDoc"] = {
        --     bg = config.transparent_background and colors.none or colors.bg,
        --     -- fg = colors.fg,
        -- },
        ["CmpDocBorder"] = {
            bg = config.transparent_background and colors.none or colors.bg,
            fg = colors.fg_06,
        },
        -- ["CmpItemAbbr"] = { fg = colors.fg, strikethrough = true },
        ["CmpItemAbbrDeprecated"] = { fg = colors.fg, strikethrough = true },
        ["CmpItemAbbrMatch"] = { fg = colors.blue_07 },
        ["CmpItemAbbrMatchFuzzy"] = { fg = colors.blue_07 },
        ["CmpItemKind"] = { fg = colors.fg },
        ["CmpItemKindClass"] = { fg = colors.fg_03 },
        ["CmpItemKindColor"] = { fg = colors.fg },
        ["CmpItemKindConstant"] = { fg = colors.cyan_02 },
        ["CmpItemKindConstructor"] = { fg = colors.fg_03 },
        ["CmpItemKindEnum"] = { fg = colors.fg_03 },
        ["CmpItemKindEnumMember"] = { fg = colors.orange_01 },
        ["CmpItemKindEvent"] = { fg = colors.fg },
        ["CmpItemKindField"] = { fg = colors.fg },
        ["CmpItemKindFile"] = { fg = colors.cyan_01 },
        ["CmpItemKindFolder"] = { fg = colors.yellow_02 },
        ["CmpItemKindFunction"] = { fg = colors.purple_01 },
        ["CmpItemKindInterface"] = { fg = colors.fg_03 },
        ["CmpItemKindKeyword"] = { fg = colors.red_01 },
        ["CmpItemKindMethod"] = { fg = colors.purple_01 },
        ["CmpItemKindModule"] = { fg = colors.fg },
        ["CmpItemKindOperator"] = { fg = colors.red_01 },
        ["CmpItemKindProperty"] = { fg = colors.fg },
        ["CmpItemKindReference"] = { fg = colors.fg },
        ["CmpItemKindSnippet"] = { fg = colors.fg },
        ["CmpItemKindSnippetFunction"] = { fg = colors.purple_01 },
        ["CmpItemKindSnippetStruct"] = { fg = colors.fg_03 },
        ["CmpItemKindStruct"] = { fg = colors.fg_03 },
        ["CmpItemKindText"] = { fg = colors.cyan_01 },
        ["CmpItemKindTypeParameter"] = { fg = colors.fg_03 },
        ["CmpItemKindUnit"] = { fg = colors.fg },
        ["CmpItemKindValue"] = { fg = colors.fg },
        ["CmpItemKindVariable"] = { fg = colors.fg },
        ["CmpItemMenu"] = { fg = colors.fg },
        -- ["CmpMenu"] = {
        --     bg = config.transparent_background and colors.none or colors.bg,
        --     fg = colors.fg,
        -- },
        ["CmpMenuBorder"] = {
            bg = config.transparent_background and colors.none or colors.bg,
            fg = colors.fg_06,
        },
        ["CmpMenuSel"] = { bg = colors.bg_05, fg = colors.fg },

        ------------------------------------------------------------------------------------------

        -- lewis6991/gitsigns.nvim

        ["GitSignsAdd"] = { fg = git.signs.add },
        ["GitSignsChange"] = { fg = git.signs.change },
        ["GitSignsDelete"] = { fg = git.signs.delete },

        ------------------------------------------------------------------------------------------

        -- petertriho/nvim-scrollbar

        ["ScrollbarError"] = { fg = diagnostic.error },
        ["ScrollbarErrorHandle"] = { fg = diagnostic.error },
        ["ScrollbarGitAdd"] = { fg = git.signs.add },
        ["ScrollbarGitAddHandle"] = { fg = git.signs.add },
        ["ScrollbarGitChange"] = { fg = git.signs.change },
        ["ScrollbarGitChangeHandle"] = { fg = git.signs.change },
        ["ScrollbarGitDelete"] = { fg = git.signs.delete },
        ["ScrollbarGitDeleteHandle"] = { fg = git.signs.delete },
        ["ScrollbarHint"] = { fg = diagnostic.hint },
        ["ScrollbarHintHandle"] = { fg = diagnostic.hint },
        ["ScrollbarInfo"] = { fg = diagnostic.info },
        ["ScrollbarInfoHandle"] = { fg = diagnostic.info },
        ["ScrollbarWarn"] = { fg = diagnostic.warn },
        ["ScrollbarWarnHandle"] = { fg = diagnostic.warn },

        ------------------------------------------------------------------------------------------

        -- nvim-tree/nvim-tree.lua

        ["NvimTreeClosedFolderIcon"] = { link = "NvimTreeFolderIcon" },
        ["NvimTreeCursorLine"] = { bg = config.transparent_background and colors.none or colors.bg_02 },
        ["NvimTreeFolderIcon"] = { fg = colors.yellow_02 },
        ["NvimTreeFolderName"] = { fg = colors.fg_03 },
        ["NvimTreeGitDeleted"] = { fg = git.status.deleted },
        ["NvimTreeGitDirty"] = { fg = git.status.modified },
        ["NvimTreeGitIgnored"] = { fg = git.status.ignored },
        ["NvimTreeGitNew"] = { fg = git.status.untracked },
        ["NvimTreeGitRenamed"] = { fg = git.status.untracked },
        ["NvimTreeGitStaged"] = { fg = git.status.staged },
        ["NvimTreeIndentMarker"] = { fg = colors.fg_07 },
        ["NvimTreeLspDiagnosticsError"] = { fg = diagnostic.error },
        ["NvimTreeLspDiagnosticsHint"] = { fg = diagnostic.hint },
        ["NvimTreeLspDiagnosticsInformation"] = { fg = diagnostic.info },
        ["NvimTreeLspDiagnosticsWarning"] = { fg = diagnostic.warn },
        ["NvimTreeModifiedFile"] = { fg = colors.fg },
        ["NvimTreeNormal"] = {
            bg = config.transparent_background and colors.none
                or (config.nvim_tree_darker and colors.bg_01 or colors.bg),
            fg = colors.fg_06,
        },
        ["NvimTreeOpenedFile"] = { fg = colors.fg_03 },
        ["NvimTreeOpenedFolderIcon"] = { link = "NvimTreeFolderIcon" },
        ["NvimTreeOpenedFolderName"] = { fg = colors.fg_03 },
        ["NvimTreeRootFolder"] = { fg = colors.fg },
        ["NvimTreeWinSeparator"] = {
            bg = config.transparent_background and colors.none or colors.bg,
            fg = colors.bg,
        },

        ------------------------------------------------------------------------------------------

        -- akinsho/toggleterm.nvim

        ["ToggleTermNormalFloat"] = { link = "NormalFloat" },
        ["ToggleTermFloatBorder"] = { link = "FloatBorder" },

        ------------------------------------------------------------------------------------------

        -- lukas-reineke/indent-blankline.nvim

        ["IndentBlanklineChar"] = { fg = colors.fg_07, bg = colors.none },
        ["IndentBlanklineContextChar"] = { fg = colors.fg_08, bg = colors.none },

        ------------------------------------------------------------------------------------------

        -- goolord/alpha-nvim
        ["AlphaButton"] = { fg = colors.fg },
        ["AlphaHeader"] = { fg = colors.red_01 },
        ["AlphaShorcut"] = { fg = colors.fg_06 },

        ------------------------------------------------------------------------------------------

        -- folke/lazy.nvim

        ["LazyProgressTodo"] = { link = "FloatBorder" },
        ["LazyButtonActive"] = { link = "LazyH1" },
    }
end

return M
