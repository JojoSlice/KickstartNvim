return {
  'folke/tokyonight.nvim', -- Pluginets repository
  config = function()
    require('tokyonight').setup {
      transparent = true,
      styles = {
        sidebars = 'transparent',
        floats = 'transparent',
      },
    }

    -- Sätt färgschemat till Tokyo Night
    vim.cmd [[colorscheme tokyonight]]
  end,
}
