-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/tomtucka/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/tomtucka/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/tomtucka/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/tomtucka/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/tomtucka/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["auto-session"] = {
    config = { "\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17user.session\frequire\0" },
    loaded = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/auto-session",
    url = "https://github.com/rmagatti/auto-session"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\n∏\1\0\0\6\0\t\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\5\0006\3\0\0'\5\3\0B\3\2\0029\3\4\3B\3\1\2=\3\6\0025\3\a\0=\3\b\2B\0\2\1K\0\1\0\foptions\1\0\1\16diagnostics\rnvim_lsp\15highlights\1\0\0\bget.catppuccin.groups.integrations.bufferline\nsetup\15bufferline\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/opt/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  catppuccin = {
    after = { "lualine.nvim", "nvim-notify", "bufferline.nvim" },
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21user.colorscheme\frequire\0" },
    loaded = true,
    only_config = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-calc"] = {
    loaded = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/cmp-calc",
    url = "https://github.com/hrsh7th/cmp-calc"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-emoji"] = {
    loaded = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/cmp-emoji",
    url = "https://github.com/hrsh7th/cmp-emoji"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-signature-help"] = {
    loaded = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["dressing.nvim"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rdressing\frequire\0" },
    loaded = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  ["editorconfig-vim"] = {
    loaded = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/editorconfig-vim",
    url = "https://github.com/editorconfig/editorconfig-vim"
  },
  ["fidget.nvim"] = {
    config = { "\27LJ\2\nr\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\vwindow\1\0\1\nblend\3\0\ttext\1\0\0\1\0\1\fspinner\tdots\nsetup\vfidget\frequire\0" },
    loaded = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  harpoon = {
    after = { "telescope.nvim" },
    config = { "\27LJ\2\n¿\2\0\0\t\0\16\0+5\0\0\0006\1\1\0'\3\2\0B\1\2\0026\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\a\0009\6\b\1\18\a\0\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\t\0009\6\n\1\18\a\0\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\v\0006\6\1\0'\b\f\0B\6\2\0029\6\r\6\18\a\0\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\14\0006\6\1\0'\b\2\0B\6\2\0029\6\15\6\18\a\0\0B\2\5\1K\0\1\0\22toggle_quick_menu\15<leader>fk\radd_file\17harpoon.mark\14<leader>m\rnav_next\a[k\rnav_prev\a[j\6n\bset\vkeymap\bvim\15harpoon.ui\frequire\1\0\2\vsilent\2\fnoremap\2\0" },
    loaded = true,
    only_config = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\nB\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\21indent_blankline\frequire\0" },
    loaded = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["inlay-hints.nvim"] = {
    loaded = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/inlay-hints.nvim",
    url = "https://github.com/simrat39/inlay-hints.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17user.lualine\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/opt/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    config = { "\27LJ\2\n≈\2\0\0\3\0\f\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\4\0005\2\5\0B\0\2\0016\0\0\0'\2\6\0B\0\2\0029\0\a\0B\0\1\0016\0\0\0'\2\b\0B\0\2\0029\0\4\0B\0\1\0016\0\0\0'\2\t\0B\0\2\0016\0\0\0'\2\n\0B\0\2\0016\0\0\0'\2\v\0B\0\2\1K\0\1\0\ruser.cmp\25user.symbols-outline\ruser.lsp\19nvim-autopairs\14lazy_load luasnip.loaders.from_vscode\1\0\2\24delete_check_events\16InsertLeave\24region_check_events\16InsertEnter\nsetup\fluasnip\tinit\flspkind\frequire\0" },
    loaded = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  neogit = {
    config = { "\27LJ\2\nG\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tkind\freplace\topen\vneogit\frequire‰\1\1\0\6\0\v\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\b\0003\4\t\0005\5\n\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\0\15<leader>gs\6n\bset\vkeymap\bvim\1\0\4\18disable_signs\2!disable_context_highlighting\2 disable_commit_confirmation\2\17disable_hint\2\nsetup\vneogit\frequire\0" },
    loaded = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/neogit",
    url = "https://github.com/TimUntersberger/neogit"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    config = { "\27LJ\2\nM\0\1\5\0\4\0\a6\1\0\0009\1\1\0019\1\2\1\18\3\0\0005\4\3\0B\1\3\1K\0\1\0\1\0\1\14focusable\1\24nvim_win_set_config\bapi\bvim{\1\0\4\0\a\0\r6\0\0\0006\1\2\0'\3\1\0B\1\2\2=\1\1\0006\0\0\0009\0\1\0009\0\3\0005\2\4\0003\3\5\0=\3\6\2B\0\2\1K\0\1\0\fon_open\0\1\0\2\vrender\fminimal\vstages\tfade\nsetup\frequire\vnotify\bvim\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/opt/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-surround"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18nvim-surround\frequire\0" },
    loaded = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/nvim-surround",
    url = "https://github.com/kylechui/nvim-surround"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n)\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\14user.tree\frequire\0" },
    loaded = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20user.treesitter\frequire\0" },
    loaded = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    loaded = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-context"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-web-devicons"] = {
    after = { "bufferline.nvim" },
    config = { "\27LJ\2\nO\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\fdefault\2\nsetup\22nvim-web-devicons\frequire\0" },
    loaded = true,
    only_config = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["symbols-outline.nvim"] = {
    loaded = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  ["telescope-github.nvim"] = {
    loaded = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/telescope-github.nvim",
    url = "https://github.com/nvim-telescope/telescope-github.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19user.telescope\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\n)\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\14user.todo\frequire\0" },
    loaded = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["vim-abolish"] = {
    loaded = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/vim-abolish",
    url = "https://github.com/tpope/vim-abolish"
  },
  ["vim-eunuch"] = {
    loaded = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/vim-eunuch",
    url = "https://github.com/tpope/vim-eunuch"
  },
  ["vim-oscyank"] = {
    config = { "\27LJ\2\n}\0\0\3\0\t\0\0176\0\0\0009\0\1\0009\0\2\0009\0\3\0\a\0\4\0X\0\nÄ6\0\0\0009\0\1\0009\0\2\0009\0\5\0\a\0\6\0X\0\4Ä6\0\0\0009\0\a\0'\2\b\0B\0\2\1K\0\1\0\17OSCYankReg +\bcmd\6+\fregname\6y\roperator\nevent\6v\bvim≥\1\1\0\b\0\v\0\0166\0\0\0009\0\1\0009\0\2\0'\2\3\0005\3\5\0003\4\4\0=\4\6\0036\4\0\0009\4\1\0049\4\a\4'\6\b\0005\a\t\0B\4\3\2=\4\n\3B\0\3\1K\0\1\0\ngroup\1\0\1\nclear\2\fOSCYank\24nvim_create_augroup\rcallback\1\0\1\fpattern\6*\0\17TextYankPost\24nvim_create_autocmd\bapi\bvim\0" },
    loaded = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/vim-oscyank",
    url = "https://github.com/ojroques/vim-oscyank"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-sayonara"] = {
    loaded = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/vim-sayonara",
    url = "https://github.com/mhinz/vim-sayonara"
  },
  ["vim-test"] = {
    config = { "\27LJ\2\n)\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\14user.test\frequire\0" },
    loaded = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/vim-test",
    url = "https://github.com/vim-test/vim-test"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/Users/tomtucka/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: fidget.nvim
time([[Config for fidget.nvim]], true)
try_loadstring("\27LJ\2\nr\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\vwindow\1\0\1\nblend\3\0\ttext\1\0\0\1\0\1\fspinner\tdots\nsetup\vfidget\frequire\0", "config", "fidget.nvim")
time([[Config for fidget.nvim]], false)
-- Config for: vim-test
time([[Config for vim-test]], true)
try_loadstring("\27LJ\2\n)\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\14user.test\frequire\0", "config", "vim-test")
time([[Config for vim-test]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: nvim-surround
time([[Config for nvim-surround]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18nvim-surround\frequire\0", "config", "nvim-surround")
time([[Config for nvim-surround]], false)
-- Config for: catppuccin
time([[Config for catppuccin]], true)
try_loadstring("\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21user.colorscheme\frequire\0", "config", "catppuccin")
time([[Config for catppuccin]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\n)\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\14user.todo\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\nB\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\21indent_blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: neogit
time([[Config for neogit]], true)
try_loadstring("\27LJ\2\nG\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tkind\freplace\topen\vneogit\frequire‰\1\1\0\6\0\v\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\b\0003\4\t\0005\5\n\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\0\15<leader>gs\6n\bset\vkeymap\bvim\1\0\4\18disable_signs\2!disable_context_highlighting\2 disable_commit_confirmation\2\17disable_hint\2\nsetup\vneogit\frequire\0", "config", "neogit")
time([[Config for neogit]], false)
-- Config for: auto-session
time([[Config for auto-session]], true)
try_loadstring("\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17user.session\frequire\0", "config", "auto-session")
time([[Config for auto-session]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20user.treesitter\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: dressing.nvim
time([[Config for dressing.nvim]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rdressing\frequire\0", "config", "dressing.nvim")
time([[Config for dressing.nvim]], false)
-- Config for: harpoon
time([[Config for harpoon]], true)
try_loadstring("\27LJ\2\n¿\2\0\0\t\0\16\0+5\0\0\0006\1\1\0'\3\2\0B\1\2\0026\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\a\0009\6\b\1\18\a\0\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\t\0009\6\n\1\18\a\0\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\v\0006\6\1\0'\b\f\0B\6\2\0029\6\r\6\18\a\0\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\14\0006\6\1\0'\b\2\0B\6\2\0029\6\15\6\18\a\0\0B\2\5\1K\0\1\0\22toggle_quick_menu\15<leader>fk\radd_file\17harpoon.mark\14<leader>m\rnav_next\a[k\rnav_prev\a[j\6n\bset\vkeymap\bvim\15harpoon.ui\frequire\1\0\2\vsilent\2\fnoremap\2\0", "config", "harpoon")
time([[Config for harpoon]], false)
-- Config for: mason.nvim
time([[Config for mason.nvim]], true)
try_loadstring("\27LJ\2\n≈\2\0\0\3\0\f\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\4\0005\2\5\0B\0\2\0016\0\0\0'\2\6\0B\0\2\0029\0\a\0B\0\1\0016\0\0\0'\2\b\0B\0\2\0029\0\4\0B\0\1\0016\0\0\0'\2\t\0B\0\2\0016\0\0\0'\2\n\0B\0\2\0016\0\0\0'\2\v\0B\0\2\1K\0\1\0\ruser.cmp\25user.symbols-outline\ruser.lsp\19nvim-autopairs\14lazy_load luasnip.loaders.from_vscode\1\0\2\24delete_check_events\16InsertLeave\24region_check_events\16InsertEnter\nsetup\fluasnip\tinit\flspkind\frequire\0", "config", "mason.nvim")
time([[Config for mason.nvim]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\nO\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\fdefault\2\nsetup\22nvim-web-devicons\frequire\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
-- Config for: vim-oscyank
time([[Config for vim-oscyank]], true)
try_loadstring("\27LJ\2\n}\0\0\3\0\t\0\0176\0\0\0009\0\1\0009\0\2\0009\0\3\0\a\0\4\0X\0\nÄ6\0\0\0009\0\1\0009\0\2\0009\0\5\0\a\0\6\0X\0\4Ä6\0\0\0009\0\a\0'\2\b\0B\0\2\1K\0\1\0\17OSCYankReg +\bcmd\6+\fregname\6y\roperator\nevent\6v\bvim≥\1\1\0\b\0\v\0\0166\0\0\0009\0\1\0009\0\2\0'\2\3\0005\3\5\0003\4\4\0=\4\6\0036\4\0\0009\4\1\0049\4\a\4'\6\b\0005\a\t\0B\4\3\2=\4\n\3B\0\3\1K\0\1\0\ngroup\1\0\1\nclear\2\fOSCYank\24nvim_create_augroup\rcallback\1\0\1\fpattern\6*\0\17TextYankPost\24nvim_create_autocmd\bapi\bvim\0", "config", "vim-oscyank")
time([[Config for vim-oscyank]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n)\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\14user.tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd telescope.nvim ]]

-- Config for: telescope.nvim
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19user.telescope\frequire\0", "config", "telescope.nvim")

vim.cmd [[ packadd nvim-notify ]]

-- Config for: nvim-notify
try_loadstring("\27LJ\2\nM\0\1\5\0\4\0\a6\1\0\0009\1\1\0019\1\2\1\18\3\0\0005\4\3\0B\1\3\1K\0\1\0\1\0\1\14focusable\1\24nvim_win_set_config\bapi\bvim{\1\0\4\0\a\0\r6\0\0\0006\1\2\0'\3\1\0B\1\2\2=\1\1\0006\0\0\0009\0\1\0009\0\3\0005\2\4\0003\3\5\0=\3\6\2B\0\2\1K\0\1\0\fon_open\0\1\0\2\vrender\fminimal\vstages\tfade\nsetup\frequire\vnotify\bvim\0", "config", "nvim-notify")

vim.cmd [[ packadd bufferline.nvim ]]

-- Config for: bufferline.nvim
try_loadstring("\27LJ\2\n∏\1\0\0\6\0\t\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\5\0006\3\0\0'\5\3\0B\3\2\0029\3\4\3B\3\1\2=\3\6\0025\3\a\0=\3\b\2B\0\2\1K\0\1\0\foptions\1\0\1\16diagnostics\rnvim_lsp\15highlights\1\0\0\bget.catppuccin.groups.integrations.bufferline\nsetup\15bufferline\frequire\0", "config", "bufferline.nvim")

vim.cmd [[ packadd lualine.nvim ]]

-- Config for: lualine.nvim
try_loadstring("\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17user.lualine\frequire\0", "config", "lualine.nvim")

time([[Sequenced loading]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
