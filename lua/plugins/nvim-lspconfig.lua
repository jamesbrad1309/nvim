return {
    "neovim/nvim-lspconfig",
    lazy = false,
    dependencies = {
        -- { "ms-jpq/coq_nvim",               branch = "coq" },
        -- { "ms-jpq/coq.artifacts",          branch = "artifacts" },
        -- { "ms-jpq/coq.thirdparty",         branch = "3p" },
        { "mason-org/mason.nvim" },
        { "mason-org/mason-lspconfig.nvim" }
    },
    init = function()
        vim.g.coq_settings = {
            auto_start = true,
        }
    end,
    opt = {
        inlay_hints = { enabled = true }
    }
}
