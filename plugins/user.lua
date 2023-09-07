return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },



  -- {
  --   "X3eRo0/dired.nvim",
  --   dependencies = {"MunifTanjim/nui.nvim"},
  --   opts = {
  --           path_separator = "/",
  --           show_banner = false,
  --           show_hidden = true,
  --           show_dot_dirs = true,
  --           show_colors = true,
  --       },
  --   event = "User AstroFile"
  -- },


  -- {
  --   "X3eRo0/dired.nvim",
  --   dependencies = {"MunifTanjim/nui.nvim"},
  --   opts = {
  --           path_separator = "/",
  --           show_banner = false,
  --           show_hidden = true,
  --           show_dot_dirs = true,
  --           show_colors = true,
  --       },
  --   event = "User AstroFile"
  -- },
  --

    {
      "folke/todo-comments.nvim",
      dependencies = { "nvim-lua/plenary.nvim" },
      opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      },
      -- event: "BufEnter *.org",
      event = "User AstroFile"
    },
    {
      "nvim-telescope/telescope-file-browser.nvim",
      dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
      -- the first parameter is the plugin specification
      -- the second is the table of options as set up in Lazy with the `opts` key
      config = function(plugin, opts)
        -- run the core AstroNvim configuration function with the options table
        require("plugins.configs.telescope")(plugin, opts)

        -- require telescope and load extensions as necessary
        local telescope = require "telescope"
        telescope.load_extension "file_browser"
      end,
      keys = {
        {"<leader>.", "<cmd>Telescope file_browser<cr>", desc = "Open Telescope file_browser"}
      }
    },

}
