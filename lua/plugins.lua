-----------------------------------------------------------
-- Plugins declaration
-----------------------------------------------------------
return require('packer').startup(function(use)
  -- Packer self management
  use {
    'wbthomason/packer.nvim',
    config = function()
      -- Recompile Packer when this file is updated
      vim.cmd([[
        augroup packer_user_config
          autocmd!
          autocmd BufWritePost plugins.lua source <afile> | PackerCompile
        augroup end
      ]])
    end
  }

  -- Programming languages support
  use 'hashivim/vim-terraform'

  -- Colorscheme
  use {
    'folke/tokyonight.nvim',
    config = function()
      vim.g.tokyonight_style = 'night'
      vim.g.tokyonight_italic_functions = true
      vim.g.tokyonight_sidebars = { "terminal", "packer" }
      vim.cmd[[colorscheme tokyonight]]
    end
  }

  -- Comments
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }

  -- Bufferline
  use {
    'akinsho/bufferline.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require("bufferline").setup({
        options = {
          numbers = function(opts)
            return string.format("%s", opts.raise(opts.ordinal))
          end,
          right_mouse_command = nil,
          styling = 'slant',
          diagnostics = "nvim_lsp",
          diagnostics_indicator = function(count, level, _)
            local icon = level:match("error") and " " or " "
            return " " .. icon .. count
          end,
          highlights = {
            title = {
              guifb = '#d69020',
              guibg = '#1a1b26',
              gui = 'bold',
            },
          },
          offsets = {
            { filetype = "NvimTree", text = "File Explorer", highlight = "title", text_align = "center" },
            { filetype = "trouble", text = "Problems", text_align = "left"},
          },
        },
      })
    end
  }

  -- Terminal
  use {
    'akinsho/toggleterm.nvim',
    config = function()
      require("toggleterm").setup({
        open_mapping = nil,
        persist_size = true,
        direction = "float",
        float_opts = {
          border = "curved",
        },
      })
    end
  }

  -- Markdown Preview
  use 'ellisonleao/glow.nvim'

  -- Tree sitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- Status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = function()
      require'lualine'.setup {
        options = {
          icons_enabled = true,
          theme = 'tokyonight',
          component_separators = '|',
          section_separators = { left = '', right = '' },
          disabled_filetypes = {},
          always_divide_middle = true,
        },
        sections = {
          lualine_a = {'mode'},
          lualine_b = {
            'branch',
          },
          lualine_c = {
            'filename',
            'diff',
            {
              'diagnostics',
              sources={'nvim_lsp', 'coc'},
            }
          },
          lualine_x = {'encoding', 'fileformat', 'filetype'},
          lualine_y = {'progress'},
          lualine_z = {'location'}
        },
        tabline = {},
        extensions = {
          'nvim-tree',
          'toggleterm',
        }
      }
    end
  }

  -- Indentation
  use {
    'lukas-reineke/indent-blankline.nvim',
    config = function()
      require("indent_blankline").setup {
        space_char_blankline = " ",
        show_current_context = true,
        show_current_context_start = true,
        show_end_of_line = false,
        buftype_exclude = { 'terminal', 'nofile'},
        filetype_exclude = { 'help', 'packer' }
      }
    end
  }

  -- File tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons',
    },
    config = function()
      require'nvim-tree'.setup {
        auto_open           = true,
        disable_netrw       = true,
        hijack_netrw        = true,
        open_on_setup       = true,
        ignore_ft_on_setup  = {},
        auto_close          = false,
        open_on_tab         = false,
        hijack_cursor       = false,
        update_cwd          = false,
        update_to_buf_dir   = {
          enable = true,
          auto_open = false,
        },
        diagnostics = {
          enable = true,
          icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
          }
        },
        update_focused_file = {
          enable      = false,
          update_cwd  = false,
          ignore_list = {}
        },
        system_open = {
          cmd  = nil,
          args = {}
        },
        filters = {
          dotfiles = false,
          custom = {}
        },
        git = {
          enable = true,
          ignore = true,
          timeout = 500,
        },
        view = {
          width = 30,
          height = 30,
          hide_root_folder = false,
          side = 'left',
          auto_resize = true,
          mappings = {
            custom_only = false,
            list = {}
          },
          number = false,
          relativenumber = false
        },
        trash = {
          cmd = "trash",
          require_confirm = true
        }
      }
    end
  }

  -- Dashboard Home page
  use {
    'glepnir/dashboard-nvim',
    config = function()
      vim.g.dashboard_default_executive = 'telescope'
    end
  }

  -- Fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    require = 'nvim-lua/plenary.nvim',
  }

  -- Git integrations
  use 'kdheepak/lazygit.nvim'
  use {
    'lewis6991/gitsigns.nvim',
    requires = 'nvim-lua/plenary.nvim',
    tag = 'release',
    config = function()
      require('gitsigns').setup {
        signs = {
          add          = {hl = 'GitSignsAdd'   , text = '│', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
          change       = {hl = 'GitSignsChange', text = '│', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
          delete       = {hl = 'GitSignsDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
          topdelete    = {hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
          changedelete = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
        },
        signcolumn = true,  -- Toggle with `:Gitsigns toggle_signs`
        numhl      = true, -- Toggle with `:Gitsigns toggle_numhl`
        linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
        word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`
        keymaps = {
          -- Default keymap options
          noremap = true,

          ['n ]c'] = { expr = true, "&diff ? ']c' : '<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>'"},
          ['n [c'] = { expr = true, "&diff ? '[c' : '<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>'"},

          ['n <leader>hs'] = '<cmd>lua require"gitsigns".stage_hunk()<CR>',
          ['v <leader>hs'] = '<cmd>lua require"gitsigns".stage_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>',
          ['n <leader>hu'] = '<cmd>lua require"gitsigns".undo_stage_hunk()<CR>',
          ['n <leader>hr'] = '<cmd>lua require"gitsigns".reset_hunk()<CR>',
          ['v <leader>hr'] = '<cmd>lua require"gitsigns".reset_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>',
          ['n <leader>hR'] = '<cmd>lua require"gitsigns".reset_buffer()<CR>',
          ['n <leader>hp'] = '<cmd>lua require"gitsigns".preview_hunk()<CR>',
          ['n <leader>hb'] = '<cmd>lua require"gitsigns".blame_line{full=true}<CR>',
          ['n <leader>hS'] = '<cmd>lua require"gitsigns".stage_buffer()<CR>',
          ['n <leader>hU'] = '<cmd>lua require"gitsigns".reset_buffer_index()<CR>',

          -- Text objects
          ['o ih'] = ':<C-U>lua require"gitsigns.actions".select_hunk()<CR>',
          ['x ih'] = ':<C-U>lua require"gitsigns.actions".select_hunk()<CR>'
        },
        watch_gitdir = {
          interval = 1000,
          follow_files = true
        },
        attach_to_untracked = true,
        current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
        current_line_blame_opts = {
          virt_text = true,
          virt_text_pos = 'right_align', -- 'eol' | 'overlay' | 'right_align'
          delay = 600,
          ignore_whitespace = false,
        },
        current_line_blame_formatter_opts = {
          relative_time = false
        },
        sign_priority = 6,
        update_debounce = 100,
        status_formatter = nil, -- Use default
        max_file_length = 40000,
        preview_config = {
          -- Options passed to nvim_open_win
          border = 'single',
          style = 'minimal',
          relative = 'cursor',
          row = 0,
          col = 1
        },
        yadm = {
          enable = false
        },
      }
    end
  }

  -- Auto-completion
  use 'github/copilot.vim'

  -- Github
  use {
    'pwntester/octo.nvim',
    config=function()
      require"octo".setup()
    end
  }

  -- LSP support
  use {
    'neovim/nvim-lspconfig',
    config = function()
      -- Modify Dignostic gutters
      local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
      for type, icon in pairs(signs) do
        local hl = "DiagnosticSign" .. type
        vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
      end
    end
  }

  use {
    "folke/lsp-trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup({
        auto_open = true,
        auto_close = true,
        auto_preview = false,
        auto_fold = true,
        signs = {
          error = "",
          warning = "",
          hint = "",
          information = "",
          other = "﫠",
        },
      })
    end
  }

  use {
    'williamboman/nvim-lsp-installer',
    config = function()
      require('nvim-lsp-installer').settings({
        ui = {
          icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
          }
        }
      })

      require('nvim-lsp-installer').on_server_ready(function(server)
        local opts = {}
        server:setup(opts)
      end)
    end
  }
end)

