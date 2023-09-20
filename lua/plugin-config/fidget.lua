return {
  {
    "j-hui/fidget.nvim",
    tag = "legacy",
    event = "LspAttach",
    config = function()
      require("fidget").setup({
        text = {
          spinner = "zip", -- animation shown when tasks are ongoing
          done = "✔", -- character shown when all tasks are complete
          commenced = "Started", -- message shown when task starts
          completed = "Completed", -- message shown when task completes
        },
        sources = {
          ["null-ls"] = {
            ignore = true,
          },
        },
      })
    end,
  },
}
