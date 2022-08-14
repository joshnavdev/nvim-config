local status, null_ls = pcall(require, "null-ls")
if (not status) then return end

null_ls.setup({
  sources = { null_ls.builtins.diagnostics.eslint.with({
    diagnostics_format = "[#{c}] #{m} (#{s})"
  }) }
})
