-- mason, write correct names only
local binaries = { "css-lsp", "html-lsp", "lua-language-server", "typescript-language-server", "stylua", "prettier" }

vim.api.nvim_create_user_command("MasonInstallAll", function()
  vim.cmd("MasonInstall " .. table.concat(binaries, " "))
end, {})
