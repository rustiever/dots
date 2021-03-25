" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/Users/sharanr/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/sharanr/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/sharanr/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/sharanr/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/sharanr/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ["barbar.nvim"] = {
    loaded = true,
    path = "/Users/sharanr/.local/share/nvim/site/pack/packer/start/barbar.nvim"
  },
  edge = {
    loaded = true,
    path = "/Users/sharanr/.local/share/nvim/site/pack/packer/start/edge"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\n&\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\vgalaxy\frequire\0" },
    loaded = true,
    path = "/Users/sharanr/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/sharanr/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["nvim-compe"] = {
    config = { "\27LJ\2\nｯ\2\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\vsource\1\0\6\rnvim_lua\2\rnvim_lsp\2\tcalc\2\vbuffer\2\tpath\2\nvsnip\2\1\0\f\21incomplete_delay\3申3\19source_timeout\3ﾈ\1\18throttle_time\3P\14preselect\venable\15min_length\3\1\17autocomplete\2\fenabled\2\ndebug\1\18documentation\2\19max_menu_width\3d\19max_kind_width\3d\19max_abbr_width\3d\nsetup\ncompe\frequire\0" },
    loaded = true,
    path = "/Users/sharanr/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nｲ\1\0\0\6\0\f\0\0166\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0005\2\5\0005\3\4\0=\3\6\0025\3\n\0005\4\b\0005\5\a\0=\5\t\4=\4\2\3=\3\v\2B\0\2\1K\0\1\0\rsettings\1\0\0\ranalyses\1\0\1\16staticcheck\2\1\0\1\17unusedparams\2\bcmd\1\0\0\1\3\0\0\ngopls\nserve\nsetup\ngopls\14lspconfig\frequire\0" },
    loaded = true,
    path = "/Users/sharanr/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\16tree-config\frequire\0" },
    loaded = true,
    path = "/Users/sharanr/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nソ1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\vindent\1\0\1\venable\2\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/sharanr/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/sharanr/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/sharanr/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["vim-sandwich"] = {
    loaded = true,
    path = "/Users/sharanr/.local/share/nvim/site/pack/packer/start/vim-sandwich"
  },
  ["vim-wakatime"] = {
    loaded = true,
    path = "/Users/sharanr/.local/share/nvim/site/pack/packer/start/vim-wakatime"
  }
}

-- Config for: nvim-treesitter
try_loadstring("\27LJ\2\nソ1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\vindent\1\0\1\venable\2\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
-- Config for: galaxyline.nvim
try_loadstring("\27LJ\2\n&\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\vgalaxy\frequire\0", "config", "galaxyline.nvim")
-- Config for: nvim-lspconfig
try_loadstring("\27LJ\2\nｲ\1\0\0\6\0\f\0\0166\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0005\2\5\0005\3\4\0=\3\6\0025\3\n\0005\4\b\0005\5\a\0=\5\t\4=\4\2\3=\3\v\2B\0\2\1K\0\1\0\rsettings\1\0\0\ranalyses\1\0\1\16staticcheck\2\1\0\1\17unusedparams\2\bcmd\1\0\0\1\3\0\0\ngopls\nserve\nsetup\ngopls\14lspconfig\frequire\0", "config", "nvim-lspconfig")
-- Config for: nvim-tree.lua
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\16tree-config\frequire\0", "config", "nvim-tree.lua")
-- Config for: nvim-compe
try_loadstring("\27LJ\2\nｯ\2\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\vsource\1\0\6\rnvim_lua\2\rnvim_lsp\2\tcalc\2\vbuffer\2\tpath\2\nvsnip\2\1\0\f\21incomplete_delay\3申3\19source_timeout\3ﾈ\1\18throttle_time\3P\14preselect\venable\15min_length\3\1\17autocomplete\2\fenabled\2\ndebug\1\18documentation\2\19max_menu_width\3d\19max_kind_width\3d\19max_abbr_width\3d\nsetup\ncompe\frequire\0", "config", "nvim-compe")
-- Config for: gitsigns.nvim
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
