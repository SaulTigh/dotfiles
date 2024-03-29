local telescope = require("telescope")

local fzf_opts = {
  fuzzy = true, -- false will only do exact matching
  override_generic_sorter = true, -- override the generic sorter
  override_file_sorter = true, -- override the file sorter
  case_mode = "smart_case", -- or "ignore_case" or "respect_case" the default case_mode is "smart_case"
}

return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      { "nvim-telescope/telescope-project.nvim" },
    },
    -- keys = { { "<leader>sa", false } },
    opts = {
      extensions = {
        fzf = fzf_opts,
      },
      pickers = {
        -- Manually set sorter, for some reason not picked up automatically
        lsp_dynamic_workspace_symbols = {
          sorter = telescope.extensions.fzf.native_fzf_sorter(fzf_opts),
        },
      },
    },
    config = function(_, opts)
      telescope.setup(opts)
      telescope.load_extension("project")
      telescope.load_extension("fzf")
    end,
  },
}
