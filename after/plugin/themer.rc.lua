local status, themer = pcall(require, 'themer')
if (not status) then return end

themer.setup({
  colorscheme = 'tokyonight',
  styles = {
    comment = { style = 'italic' },
    keyword = { style = 'italic,bold' },
  }
})
