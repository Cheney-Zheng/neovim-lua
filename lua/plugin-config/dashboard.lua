return {
    {
        "glepnir/dashboard-nvim",
        event = "VimEnter",
        dependencies = {"nvim-tree/nvim-web-devicons"},
        config = function()
            local status_ok, db = pcall(require, "dashboard")
            db.setup({
                config = {
                    header = {
                        [[]],
                        [[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗]],
                        [[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║]],
                        [[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║]],
                        [[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║]],
                        [[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║]],
                        [[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝]],
                        [[                                                   ]],
                        [[                [ version : 1.0.0 ]                ]],
                    },
                    week_header = {
                        enable = true,
                    },
                },
            })
        end,
    }
}
