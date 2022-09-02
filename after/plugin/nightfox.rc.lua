local status, n = pcall(require, 'nightfox')
if (not status) then
  print('nightfox not installed')
  return
end

n.setup({
  options = {
    transparent = false,
    styles = {
      comments = "italic",
      keywords = "bold",
      types = "italic,bold",
    }
  }
})

vim.cmd('colorscheme nightfox')
