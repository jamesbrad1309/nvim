return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
        "williamboman/mason.nvim",
        "neovim/nvim-lspconfig"
    },
    opts = {
        automatic_installation = true,
        ensure_installed = {
            "cssls",
            "tailwindcss",
            "docker_compose_language_service",
            "dockerls",
            "gopls",
            "graphql",
            "html",
            "biome",
            "eslint",
            "ts_ls",
            "lua_ls",
            "grammarly",
            "nginx_language_server",
            "pyright",
            "bashls",
            "vimls",
            "yamlls"
        },
        handlers = {
            function(server_name)
                require("lspconfig")[server_name].setup({})
            end,
        },
    }
}
