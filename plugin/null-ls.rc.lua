local status, null_ls = pcall(require, "null-ls")
if (not status) then return end

null_ls.setup({
  debug = false,
  sources = {
    null_ls.builtins.diagnostics.eslint_d.with({
      diagnostics_format = "[#{c}] #{m} (#{s})"
    }),
    null_ls.builtins.diagnostics.jsonlint
  }
})
