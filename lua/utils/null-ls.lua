return {
    {
        "jose-elias-alvarez/null-ls.nvim",
        dependencies = {"nvim-lua/plenary.nvim"},
        config = function()
            require("lsp.null-ls-config")
        end
    }
}
