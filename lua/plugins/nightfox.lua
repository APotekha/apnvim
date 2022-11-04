local palettes = {
    nordfox = {
        bg0 = "#292F3B",
        bg1 = "#2e3440",
        comment = "#60728a",
    },
}
local groups = {
    nordfox = {
        --MsgArea = { bg = "#292F3B" },
        BufferCurrent = { bg = "#2e3440" },
        BufferCurrentSign = { bg = "#2e3440" },
        BufferCurrentMod = { bg = "#2e3440" },
        BufferCurrentTarget = { bg = "#2e3440"},
        ["@method"]     = { fg = "#D69F7E"},
        ["@function"] = { fg = "#D69F7E"},
    }
}
require('nightfox').setup({
    options = {
        transparent = false,
        terminal_colors = false,
    },
    palettes = palettes,
    groups = groups,
    modules = {
        
    }
})
vim.cmd("colorscheme nordfox")
