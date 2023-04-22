local null_ls = require "null-ls"
local format = null_ls.builtins.formatting

null_ls.setup {
  sources = {
    format.stylua, -- for lua
    format.prettier, -- for web dev
  },
}
