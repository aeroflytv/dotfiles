local status, ap = pcall(require, 'nvim-autopairs')
if(not status) then return end

local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')

ap.setup{
  -- Autopairs setup..
  disable_filetype = { "TelescopePrompt", "vim" },
}

cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)
