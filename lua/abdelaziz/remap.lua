vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>?", "<cmd>WhichKey<CR>");

-- vim.keymap.set("n", "<leader>sv", vim.cmd.w)
--
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
--
--
-- vim.keymap.set("n", "<leader>la", ":Laravel artisan<cr>")
-- vim.keymap.set("n", "<leader>lr", ":Laravel routes<cr>")
-- vim.keymap.set("n", "<leader>lm", ":Laravel related<cr>")
--
-- vim.keymap.set("n", "J", "mzJ`z")
-- vim.keymap.set("n", "<C-d>", "<C-d>zz")
-- vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- vim.keymap.set("n", "n", "nzzzv")
-- vim.keymap.set("n", "N", "Nzzzv")
--
-- vim.keymap.set("n", "<leader>vwm", function()
--     require("vim-with-me").StartVimWithMe()
-- end)
-- vim.keymap.set("n", "<leader>svwm", function()
--     require("vim-with-me").StopVimWithMe()
-- end)
--
-- -- greatest remap ever
-- vim.keymap.set("x", "<leader>p", [["_dP]])
--
-- -- next greatest remap ever : asbjornHaland
-- vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
-- vim.keymap.set("n", "<leader>Y", [["+Y]])
--
-- vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
--
-- -- This is going to get me cancelled
-- vim.keymap.set("i", "<C-c>", "<Esc>")
--
-- vim.keymap.set("n", "Q", "<nop>")
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
--
-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
--
-- vim.keymap.set("n", "<C-f>", ":%s/")
-- vim.keymap.set("n", "<leader>#", ":%s/#.*/")
--
-- vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
--
-- vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
-- vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");
--
-- vim.keymap.set("n", "<leader><leader>", function()
--     vim.cmd("so")
-- end)
--
-- -- Start Code actions
-- vim.keymap.set({ 'i', 'n' }, "<C-a>", function()
--     vim.lsp.buf.code_action()
-- end)
--
-- -- Flutter keymap
-- vim.keymap.set("n", "<leader>ff", vim.cmd.FlutterOutlineToggle)
--
-- -- Toggle nvim trees
-- vim.keymap.set('n', "<leader>pv", vim.cmd.NvimTreeToggle)
--
-- -- Codeium
-- vim.keymap.set('i', '<C-g>', function() return vim.fn['codeium#Accept']() end, { expr = true })
-- vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
-- vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
-- vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })


local wk = require("which-key")

wk.add({
    { "<leader>sv",       vim.cmd.w,                                                    desc = "Save current file",                    mode = "n" },

    -- { "J",                "mzJ`z",                                                      desc = "Join line",                            mode = "n" },
    { "<C-d>",            "<C-d>zz",                                                    desc = "Scroll down",                          mode = "n" },
    { "<C-u>",            "<C-u>zz",                                                    desc = "Scroll up",                            mode = "n" },
    { "n",                "nzzzv",                                                      desc = "Next search result",                   mode = "n" },
    { "N",                "Nzzzv",                                                      desc = "Previous search result",               mode = "n" },


    { "<leader>p",        [["_dP]],                                                     desc = "Paste without overwriting clipboard",  mode = "x" },
    { "<leader>y",        [["+y]],                                                      desc = "Copy to clipboard",                    mode = { "n", "v" } },
    { "<leader>Y",        [["+Y]],                                                      desc = "Copy line to clipboard",               mode = "n" },
    { "<leader>d",        [["_d]],                                                      desc = "Delete without overwriting clipboard", mode = { "n", "v" } },

    { "<C-c>",            "<Esc>",                                                      desc = "Escape using Ctrl-c",                  mode = "i" },

    { "Q",                "<nop>",                                                      desc = "Disable Ex mode",                      mode = "n" },
    { "<C-f>",            "<cmd>silent !tmux neww tmux-sessionizer<CR>",                desc = "Open tmux sessionizer",                mode = "n" },
    { "<leader>f",        vim.lsp.buf.format,                                           desc = "Format code",                          mode = "n" },

    { "<C-k>",            "<cmd>cnext<CR>zz",                                           desc = "Next quickfix",                        mode = "n" },
    { "<C-j>",            "<cmd>cprev<CR>zz",                                           desc = "Previous quickfix",                    mode = "n" },
    { "<leader>k",        "<cmd>lnext<CR>zz",                                           desc = "Next location",                        mode = "n" },
    { "<leader>j",        "<cmd>lprev<CR>zz",                                           desc = "Previous location",                    mode = "n" },

    { "<C-f>",            ":%s/",                                                       desc = "Search and replace",                   mode = "n" },
    { "<leader>#",        ":%s/#.*/",                                                   desc = "Replace commented lines",              mode = "n" },
    { "<leader>s",        [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],       desc = "Replace word under cursor",            mode = "n" },

    { "<leader>vpp",      "<cmd>e ~/.config/nvim/lua/abdelaziz/packer.lua<CR>",         desc = "Edit packer.lua",                      mode = "n" },
    { "<leader>mr",       "<cmd>CellularAutomaton make_it_rain<CR>",                    desc = "Make it rain",                         mode = "n" },

    { "<leader><leader>", function() vim.cmd("so") end,                                 desc = "Source current file",                  mode = "n" },

    { "<C-a>",            function() vim.lsp.buf.code_action() end,                     desc = "Code action",                          mode = { "i", "n" } },

    { "<leader>ff",       vim.cmd.FlutterOutlineToggle,                                 desc = "Toggle Flutter Outline",               mode = "n" },
    { "<leader>pv",       vim.cmd.NvimTreeToggle,                                       desc = "Toggle NvimTree",                      mode = "n" },

    { "<C-g>",            function() return vim.fn['codeium#Accept']() end,             desc = "Accept suggestion",                    mode = "i",         expr = true, replace_keycodes = false },
    { "<c-;>",            function() return vim.fn['codeium#CycleCompletions'](1) end,  desc = "Next Codeium suggestion",              mode = "i",         expr = true },
    { "<c-,>",            function() return vim.fn['codeium#CycleCompletions'](-1) end, desc = "Previous Codeium suggestion",          mode = "i",         expr = true },
    { "<c-x>",            function() return vim.fn['codeium#Clear']() end,              desc = "Clear Codeium suggestion",             mode = "i",         expr = true },
})
