return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function()
    vim.lsp.config("*", {
      capabilities = require("blink.cmp").get_lsp_capabilities(),
      on_attach = function(client, bufnr)
        if client.server_capabilities.documentSymbolProvider then
          require("nvim-navic").attach(client, bufnr)
        end
      end,
    })

    vim.lsp.config("gopls", {
      settings = {
        gopls = {
          semanticTokens = true,
          analyses = {
            assign = true,
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
    })

    require("mason-lspconfig").setup({
      automatic_enable = true,
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
        "harper_ls",
        "nginx_language_server",
        "pyright",
        "bashls",
        "vimls",
        "yamlls",
      },
    })
  end,
}
