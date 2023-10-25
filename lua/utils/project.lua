-- 我的文件在
--  ~/.local/share/nvim/project_nvim/project_history
return {
    {
        "ahmedkhalf/project.nvim",
        config = function()
            vim.g.nvim_tree_respect_buf_cwd = 1
            require("project_nvim").setup({
                detection_methods = { "pattern" },
                patterns = {
                    "README.md",
                    "Cargo.toml",
                    "package.json",
                    ".sln",
                    ".git",
                    "_darcs",
                    ".hg",
                    ".bzr",
                    ".svn",
                    "Makefile",
                },
            })
            require("telescope").load_extension("projects")
        end
    }
}

