return {
  { lazy = true, "nvim-lua/plenary.nvim" },

  {
    "EdenEast/nightfox.nvim",
    priority = 1000,
    config = true,
  },

  {
    "nvim-tree/nvim-tree.lua",
    cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    opts = {},
  },

  {
    "nvim-tree/nvim-web-devicons",
    opts = {},
  },

  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require "plugins.configs.treesitter"
    end,
  },

  {
    "akinsho/bufferline.nvim",
    event = "BufReadPre",
    opts = require "plugins.configs.bufferline",
  },

  {
    "echasnovski/mini.statusline",
    config = function()
      require("mini.statusline").setup { set_vim_settings = false }
    end,
  },

  -- we use cmp plugin only when in insert mode
  -- so lets lazyload it at InsertEnter event, to know all the events check h-events
  -- completion , now all of these plugins are dependent on cmp, we load them after cmp
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      -- cmp sources
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-nvim-lsp",
      "saadparwaiz1/cmp_luasnip",
      "hrsh7th/cmp-nvim-lua",

      --list of default snippets
      "rafamadriz/friendly-snippets",

      -- snippets engine
      {
        "L3MON4D3/LuaSnip",
        config = function()
          require("luasnip.loaders.from_vscode").lazy_load()
        end,
      },

      -- autopairs , autocompletes ()[] etc
      {
        "windwp/nvim-autopairs",
        config = function()
          require("nvim-autopairs").setup()

          local cmp_autopairs = require "nvim-autopairs.completion.cmp"
          local cmp = require "cmp"
          cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
        end,
      },
    },
    -- made opts a function cuz cmp config calls cmp module
    -- and we lazyloaded cmp so we dont want that file to be read on startup!
    opts = function()
      return require "plugins.configs.cmp"
    end,
  },

  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    cmd = { "Mason", "MasonInstall" },
    opts = {},
  },

  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require "plugins.configs.lspconfig"
    end,
  },

  {
    "stevearc/conform.nvim",
    lazy = true,
    opts = require "plugins.configs.conform",
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("ibl").setup {
        indent = { char = "│" },
        scope = { char = "│", highlight = "Comment" },
      }
    end,
  },

  -- files finder etc
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    opts = require "plugins.configs.telescope",
  },

  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {},
  },
}
