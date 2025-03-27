return {
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup {
        'css',
        'javascript',
        html = { mode = 'foreground' },
      }
    end,
  },
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      {
        'roobert/tailwindcss-colorizer-cmp.nvim',
        config = function()
          local tailwindcss_cmp = require 'tailwindcss-colorizer-cmp'

          require('cmp').setup {
            formatting = {
              format = tailwindcss_cmp.formatter,
            },
          }

          tailwindcss_cmp.setup {
            color_square_width = 2,
          }
        end,
      },
    },
  },
}
