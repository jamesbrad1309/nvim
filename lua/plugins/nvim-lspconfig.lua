return {
    "neovim/nvim-lspconfig",
    lazy = false,
    dependencies = {
        { "williamboman/mason.nvim" },
        { "williamboman/mason-lspconfig.nvim" }
    },
    init = function()
        vim.g.coq_settings = {
            auto_start = true,
        }
    end,
    -- Use a custom key to avoid lazy.nvim's auto-setup which fails on lspconfig
    opt = {
        inlay_hints = { enabled = true }
    }
}
