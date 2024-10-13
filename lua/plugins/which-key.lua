return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
        -- Initialize which-key
        local wk = require("which-key")

        wk.setup({
            plugins = {
                spelling = {
                    enabled = true, -- show spelling suggestions
                    suggestions = 20, -- how many suggestions to show
                },
            },
            window = {
                border = "single", -- none, single, double, shadow
                position = "bottom", -- bottom, top
                margin = { 1, 0, 1, 0 }, -- extra window margin
                padding = { 2, 2, 2, 2 }, -- extra window padding
                winblend = 0, -- transparency level
            },
        })

        -- Register the keybindings with relevant groups for leader key
        wk.register({

            { "<leader>b",  group = "Buffer" },
            { "<leader>bb", "<cmd>Telescope buffers<cr>",             desc = "List Buffers" },
            { "<leader>bd", "<cmd>bd<cr>",                            desc = "Close Buffer" },
            { "<leader>bn", "<cmd>bnext<cr>",                         desc = "Next Buffer" },
            { "<leader>bp", "<cmd>bprevious<cr>",                     desc = "Previous Buffer" },
            { "<leader>f",  group = "File" },
            { "<leader>ff", "<cmd>Telescope find_files<cr>",          desc = "Find Files" },
            { "<leader>fq", "<cmd>q<cr>",                             desc = "Quit" },
            { "<leader>fr", "<cmd>Telescope oldfiles<cr>",            desc = "Open Recent File" },
            { "<leader>fs", "<cmd>w<cr>",                             desc = "Save File" },
            { "<leader>g",  group = "Git" },
            { "<leader>gb", "<cmd>Gitsigns blame_line<cr>",           desc = "Blame" },
            { "<leader>gd", "<cmd>Gitsigns diffthis<cr>",             desc = "Git Diff" },
            { "<leader>gs", "<cmd>Gitsigns stage_hunk<cr>",           desc = "Stage Hunk" },
            { "<leader>gu", "<cmd>Gitsigns undo_stage_hunk<cr>",      desc = "Undo Stage Hunk" },
            { "<leader>l",  group = "LSP" },
            { "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", desc = "Code Action" },
            { "<leader>ld", "<cmd>Telescope lsp_definitions<cr>",     desc = "Go to Definition" },
            { "<leader>lf", "<cmd>lua vim.lsp.buf.formatting()<cr>",  desc = "Format Code" },
            { "<leader>lr", "<cmd>Telescope lsp_references<cr>",      desc = "Find References" },
            { "<leader>s",  group = "Search" },
            { "<leader>sb", "<cmd>Telescope buffers<cr>",             desc = "Buffers" },
            { "<leader>sf", "<cmd>Telescope find_files<cr>",          desc = "Find Files" },
            { "<leader>sg", "<cmd>Telescope live_grep<cr>",           desc = "Live Grep" },
            { "<leader>sh", "<cmd>Telescope help_tags<cr>",           desc = "Help" },
            { "<leader>w",  group = "Window" },
            { "<leader>wc", "<cmd>close<cr>",                         desc = "Close Window" },
            { "<leader>wo", "<cmd>only<cr>",                          desc = "Close Other Windows" },
            { "<leader>ws", "<cmd>split<cr>",                         desc = "Horizontal Split" },
            { "<leader>wv", "<cmd>vsplit<cr>",                        desc = "Vertical Split" },

            -- File operations
            f = {
                name = "File", -- Group name
                f = { "<cmd>Telescope find_files<cr>", "Find Files" },
                r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
                s = { "<cmd>w<cr>", "Save File" },
                q = { "<cmd>q<cr>", "Quit" },
            },

            -- Buffer operations
            b = {
                name = "Buffer", -- Group name
                b = { "<cmd>Telescope buffers<cr>", "List Buffers" },
                d = { "<cmd>bd<cr>", "Close Buffer" },
                n = { "<cmd>bnext<cr>", "Next Buffer" },
                p = { "<cmd>bprevious<cr>", "Previous Buffer" },
            },

            -- Git operations
            g = {
                name = "Git", -- Group name
                s = { "<cmd>Gitsigns stage_hunk<cr>", "Stage Hunk" },
                u = { "<cmd>Gitsigns undo_stage_hunk<cr>", "Undo Stage Hunk" },
                d = { "<cmd>Gitsigns diffthis<cr>", "Git Diff" },
                b = { "<cmd>Gitsigns blame_line<cr>", "Blame" },
            },

            -- Window/Workspace operations
            w = {
                name = "Window", -- Group name
                s = { "<cmd>split<cr>", "Horizontal Split" },
                v = { "<cmd>vsplit<cr>", "Vertical Split" },
                c = { "<cmd>close<cr>", "Close Window" },
                o = { "<cmd>only<cr>", "Close Other Windows" },
            },

            -- Searching and navigation
            s = {
                name = "Search", -- Group name
                f = { "<cmd>Telescope find_files<cr>", "Find Files" },
                g = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
                b = { "<cmd>Telescope buffers<cr>", "Buffers" },
                h = { "<cmd>Telescope help_tags<cr>", "Help" },
            },

            -- LSP actions
            l = {
                name = "LSP", -- Group name
                a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
                d = { "<cmd>Telescope lsp_definitions<cr>", "Go to Definition" },
                r = { "<cmd>Telescope lsp_references<cr>", "Find References" },
                f = { "<cmd>lua vim.lsp.buf.formatting()<cr>", "Format Code" },
            },
        }, { prefix = "<leader>" })
    end,
}
