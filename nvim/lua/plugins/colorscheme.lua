return {
    {
        "morhetz/gruvbox",                   -- Plugin Gruvbox original
        priority = 1000,                     -- Charger avant les autres plugins pour éviter les conflits
        config = function()
            vim.cmd([[colorscheme gruvbox]]) -- Activer Gruvbox
        end,
    },
}
