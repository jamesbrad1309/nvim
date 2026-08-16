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
                local opts = {}
                if server_name == "gopls" then
                    opts = {
                        settings = {
                            gopls = {
                                semanticTokens = true,
                                analyses = {
                                    assignvariable = true,
                                    bools = true,
                                    defers = true,
                                    deprecated = true,
                                    fieldalignment = true,
                                    httpresponse = true,
                                    ifaceassert = true,
                                    infertypeargs = true,
                                    loopclosure = true,
                                    lostcancel = true,
                                    nilfunc = true,
                                    nilness = true,
                                    nonstandardprintf = true,
                                    shadow = true,
                                    sigchanyzer = true,
                                    simplifycompositelit = true,
                                    simplifyrange = true,
                                    simplifyslice = true,
                                    sortslice = true,
                                    stdmethods = true,
                                    stringintconv = true,
                                    structtag = true,
                                    testinggoroutine = true,
                                    tests = true,
                                    timeformat = true,
                                    unmarshal = true,
                                    unreachable = true,
                                    unsafeptr = true,
                                    unusedparams = true,
                                    unusedresult = true,
                                    unusedvariable = true,
                                    unusedwrite = true,
                                    useany = true,
                                },
                                hoverKind = "FullDocumentation",
                                staticcheck = true,
                                linksInHover = true,
                                usePlaceholders = true,
                                completeUnimported = true,
                                gofumpt = true,
                                codelenses = {
                                    generate = true,
                                    gc_details = false,
                                    test = true,
                                    tidy = true,
                                },
                                hints = {
                                    assignVariableTypes = true,
                                    compositeLiteralFields = true,
                                    compositeLiteralTypes = true,
                                    constantValues = true,
                                    functionTypeParameters = true,
                                    parameterNames = true,
                                    rangeVariableTypes = true,
                                },
                            },
                        },
                    }
                end
                require("lspconfig")[server_name].setup(opts)
            end,
        },
    }
}
