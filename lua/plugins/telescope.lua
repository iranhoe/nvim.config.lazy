return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-live-grep-args.nvim",
    },
    config = function()
      local telescope = require("telescope")

      -- first setup telescope
      telescope.setup({
        defaults = {

          -- your config
          layout_strategy = "vertical",
          layout_config = {
            height = 0.95,
            prompt_position = "top",
          },
          path_display = {
            filename_first = {
              reverse_directories = false,
            },
          },
        },
      })

      -- then load the extension
      telescope.load_extension("live_grep_args")
    end,
  },
}
