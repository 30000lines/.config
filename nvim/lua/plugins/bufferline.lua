return {
    "akinsho/bufferline.nvim",
    -- config = function(_, opts)
    --     require("bufferline").setup({
    --         options = {
    --             name_formatter = function(buf) -- buf contains a "name", "path" and "bufnr"
    --                 -- remove extension from markdown files for example
    --                 if buf.name:match("%.md") then
    --                     return buf.name:sub(1, -4)
    --                 end
    --                 return buf.name
    --             end,
    --         },
    --     })
    -- end,
}
