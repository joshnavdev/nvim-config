local status, nvim_lsp = pcall(require, 'lspconfig')
if (not status) then return end

local protocol = require('vim.lsp.protocol')
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

local on_attach = function(client, bufnr)
  -- formatting
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
    vim.api.nvim_command [[augroup END]]
  end
end

nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  cmd = { "typescript-language-server", "--stdio" }
}

nvim_lsp.sumneko_lua.setup {
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        -- GET the language server to recognize the 'vim' global
        globals = { 'vim' }
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      }
    }
  }
}


-- JSON
capabilities.textDocument.completion.completionItem.snippetSupport = true
nvim_lsp.jsonls.setup { on_attach = on_attach, capabilities = capabilities }


-- tailwindcss
nvim_lsp.tailwindcss.setup { on_attach = on_attach, capabilities = capabilities }
