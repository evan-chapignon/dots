-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

local handle = io.popen("ps -e | grep -E 'sway|Hyprland'")
local wm = handle:read("*a") or ""
handle:close()

-- if wm:match("sway") then
--     vim.cmd("colorscheme gruvbox")
-- elseif wm:match("Hyprland") then
--     vim.cmd("colorscheme gruvbox")
-- end

-- vim.o.background = "light" -- Utiliser le thème light
vim.cmd.colorscheme "gruvbox"

vim.api.nvim_create_autocmd("FileType", {
    pattern = "java",
    callback = function()
        vim.cmd("syn match MyString /\\<String\\>/")
        vim.cmd("hi MyString ctermfg=yellow guifg=yellow")
    end
})
