return {
  {
    "ojroques/nvim-osc52",
    config = function()
      local function osc52_copy(lines, _)
        require("osc52").copy(table.concat(lines,'\n'))
      end

      local function osc52_paste()
        return { vim.fn.split(vim.fn.getreg(""), "\n"), vim.fn.getregtype("") }
      end

      vim.g.clipboard = {
        name = "osc52",
        copy = { ["+"] = osc52_copy, ["*"] = osc52_copy },
        paste = { ["+"] = osc52_paste, ["*"] = osc52_paste },
      }

      require("osc52").setup({
        max_length = 0,
        silent = false,
        trim = false,
        tmux_passthrough = flase,
      })
    end,
  },
}
