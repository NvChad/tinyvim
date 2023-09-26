require("conform").setup {
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { { "prettier" } },
  },
}
