return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons", "moll/vim-bbye" },
    config = function()
      -- bfferline 配置
      -- https://github.com/akinsho/bufferline.nvim#configuration
      require("bufferline").setup({
        options = {
          -- 关闭 Tab 的命令
          close_command = "Bdelete! %d",
          right_mouse_command = "Bdelete! %d",
          -- 侧边栏配置
          -- 左侧让出 nvim-tree 的位置，显示文字 File Explorer
          offsets = {
            {
              filetype = "NvimTree",
              text = "File Explorer",
              highlight = "Directory",
              text_align = "left",
            },
          },
          -- 使用 nvim 内置 LSP  后续课程会配置
          diagnostics = "nvim_lsp",
          -- 可选，显示 LSP 报错图标
          ---@diagnostic disable-next-line: unused-local
          --[[ diagnostics_indicator = function(count, level, diagnostics_dict, context)
                        local s = " "
                        for e, n in pairs(diagnostics_dict) do
                            local sym = e == "error" and " " or (e == "warning" and " " or "")
                            s = s .. n .. sym
                        end
                        return s
                    end, ]]
        },
      })
    end,
  },
}
