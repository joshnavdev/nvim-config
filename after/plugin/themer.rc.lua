local status, themer = pcall(require, 'themer')
if (not status) then return end

themer.setup({
  colorscheme = 'doom_one',
  styles = {
    comment = { style = 'italic' },
    keyword = { style = 'italic,bold' },
  }
})
