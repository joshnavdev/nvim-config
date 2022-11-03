local status, themer = pcall(require, 'themer')
if (not status) then return end

themer.setup({
  colorscheme = 'darknight',
  transparent = false,
  styles = {
    comment = { style = 'italic' },
    keyword = { style = 'italic,bold' },
  }
})
