require('base')
require('highlights')
require('maps')
require('plugins')
require('globals')

local has = function(x)
  return vim.fn.has(x)
end

local is_mac = has "macunix"
local is_win = has "win32"

if is_mac == 1 then
  require('macos')
end

if is_win == 1 then
  require('windows')
end
