return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {"williamboman/nvim-lsp-installer"},
        config = function()
            require("lsp.setup")
        end
    }
}
