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
    opts = {
        inlay_hints = { enabled = true }
    },
    config = function(_, opts)
        if vim.lsp.inlay_hint then
            vim.api.nvim_create_autocmd("LspAttach", {
                callback = function(args)
                    local client = vim.lsp.get_client_by_id(args.data.client_id)
                    if client and client.server_capabilities.inlayHintProvider then
                        vim.lsp.inlay_hint.enable(true, { bufnr = args.buf })
                    end
                end,
            })
        end
    end
}
