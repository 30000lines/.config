return {
    {
        "ibhagwan/fzf-lua",
        -- optional for icon support
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            -- calling `setup` is optional for customization
            local fzf = require("fzf-lua")
            fzf.setup({
                winopts = {
                    height = 1,
                    width = 1,
                    preview = {
                        layout = "vertical",
                        scrollbar = "float",
                    },
                    fullscreen = true,
                    vertical = "down:45%", -- up|down:size
                    horizontal = "right:60%", -- right|left:size
                    hidden = "nohidden",
                },
            })
        end,
    },
}
