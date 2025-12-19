{
  imports = [ ];
  config.vim = {
    lsp = {
      # Enable LSP functionality globally. This is required for modules found
      # in `vim.languages` to enable relevant LSPs.
      enable = true;

      # You may define your own LSP configurations using `vim.lsp.servers` in
      # nvf without ever needing lspconfig to do it. This will use the native
      # API provided by Neovim > 0.11
      servers = { };
    };

    # Language support and automatic configuration of companion plugins.
    # Note that enabling, e.g., languages.<lang>.diagnostics will automatically
    # enable top-level options such as enableLSP or enableExtraDiagnostics as
    # they are needed.
    languages = {
      enableFormat = true;
      enableTreesitter = true;
      enableExtraDiagnostics = true;

      # Nix language and diagnostics.
      nix.enable = true;
    };
  };
}
