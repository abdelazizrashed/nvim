require("flutter-tools").setup {
    debugger = {
        enabled = true,
        run_via_dap = true,
    },
    outline = { auto_open = false },
    decorations = {
        statusline = { device = true, app_version = true },
    },
    widget_guides = { enabled = true, debug = true },
    dev_log = { enabled = false, open_cmd = "tabedit" },
    lsp = {
        color = {
            enabled = true,
            background = false,
            background_color = nil,
            foreground = false,
            virtual_text = true,
            virtual_text_str = "■",
        },
        settings = {
            showTodos = true,
            renameFilesWithClasses = "prompt",
        },
        -- on_attach = require("ryewell.lsp.handlers").on_attach,
        -- capabilities = require("ryewell.lsp.handlers").capabilities,
    },
}
