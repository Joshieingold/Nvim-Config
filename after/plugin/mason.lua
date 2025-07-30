    require("mason").setup({
      -- Optional: List of servers to automatically install on first run
      ensure_installed = { "lua_ls", "html", "cssls" },
    })
    -- Optional: Configure mason-lspconfig to automatically install LSP servers
    -- based on your nvim-lspconfig setup
    require("mason-lspconfig").setup({
      automatic_installation = true, -- Automatically installs servers when configured via lspconfig
    })
