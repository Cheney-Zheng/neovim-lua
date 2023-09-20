local clangd_ops = {
  cmd = {
    "clangd",
    "--background-index",
  },
  filetypes = { "c", "cpp", "objc", "objcpp" },
  on_attach = function(client, bufnr)
    -- 禁用格式化功能，交给专门插件插件处理
    local function buf_set_keymap(...)
      vim.api.nvim_buf_set_keymap(bufnr, ...)
    end
    -- 绑定快捷键
    require("keybindings").mapLSP(buf_set_keymap)
  end,
}

return {
  on_setup = function(server)
    server.setup(clangd_ops)
  end,
}
