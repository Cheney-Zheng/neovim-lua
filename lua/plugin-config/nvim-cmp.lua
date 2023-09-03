return {
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/vim-vsnip",
            "hrsh7th/cmp-vsnip",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "rafamadriz/friendly-snippets"
        },
        config = function()
            require("lsp.cmp")
        end
    }
}
