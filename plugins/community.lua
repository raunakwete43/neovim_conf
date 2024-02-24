return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.colorscheme.kanagawa-nvim" },
  --[[ { -- further customize the options set by the community
    "catppuccin",
    opts = {
      integrations = {
        sandwich = false,
        noice = true,
        mini = true,
        leap = true,
        markdown = true,
        neotest = true,
        cmp = true,
        overseer = true,
        lsp_trouble = true,
        rainbow_delimiters = true,
      },
    },
    config = function()
      require("catppuccin").setup {
        transparent_background = true,
        term_colors = true,
        dim_inactive = {
          enabled = true, -- dims the background color of inactive window
          shade = "dark",
          percentage = 0.80, -- percentage of the shade to apply to the inactive window
        },
      }
    end,
  }, ]]
  { import = "astrocommunity.color.transparent-nvim" },
  { import = "astrocommunity.completion.codeium-vim" },
  { import = "astrocommunity.bars-and-lines.lualine-nvim" },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup {
        options = {
          theme = "palenight",
        },
      }
    end,
  },
  {
    "xiyaowong/transparent.nvim",
    lazy = false,
    config = function()
      local transparent = require "transparent"
      transparent.setup {
        extra_groups = {
          "NormalFloat",
          "NvimTreeNormal",
        },
      }
      -- transparent.clear_prefix "BufferLine"
      -- transparent.clear_prefix "NeoTree"
      -- transparent.clear_prefix "lualine"
    end,
  },
}
