return {
  {
    "williamboman/mason.nvim",

    opts = {
      ensured_installed = {
        "rust-analyzer",

        "clangd",
        "ast-grep",
        "codelldb",
        "cpptools",

        -- Vuln detectors.
        "trivy",
        "snyk",

        "rust-analyzer",

        "python-lsp-server",

        -- XML formatter.
        "lemminx",

        "lua-language-server",
        "stylua"
      },
    },
  },
}
