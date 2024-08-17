return {
  {
    "folke/zen-mode.nvim",
    lazy = true,
    cmd = "ZenMode",
    opts = {
      window = {
        backdrop = 0.9,
        width = 130,
      },
      plugins = {
        options = {
          laststatus = 0,
        },
        todo = { enabled = true },
        kitty = {
          enabled = true,
          font = "+2",
        },
      },
    },
  },
}
