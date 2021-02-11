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
local package_path_str = "/Users/sharan/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/sharan/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/sharan/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/sharan/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/sharan/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, err = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(err)
  end
end

_G.packer_plugins = {
  ["auto-pairs"] = {
    loaded = true,
    path = "/Users/sharan/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["barbar.nvim"] = {
    loaded = true,
    path = "/Users/sharan/.local/share/nvim/site/pack/packer/start/barbar.nvim"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\n&\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\vgalaxy\frequire\0" },
    loaded = true,
    path = "/Users/sharan/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/sharan/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/Users/sharan/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/Users/sharan/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/sharan/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/sharan/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/sharan/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/sharan/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/sharan/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/sharan/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["prodoc.nvim"] = {
    loaded = true,
    path = "/Users/sharan/.local/share/nvim/site/pack/packer/start/prodoc.nvim"
  },
  ["quick-scope"] = {
    loaded = true,
    path = "/Users/sharan/.local/share/nvim/site/pack/packer/start/quick-scope"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/sharan/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-go"] = {
    loaded = true,
    path = "/Users/sharan/.local/share/nvim/site/pack/packer/start/vim-go"
  },
  ["vim-sandwich"] = {
    loaded = true,
    path = "/Users/sharan/.local/share/nvim/site/pack/packer/start/vim-sandwich"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/Users/sharan/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/Users/sharan/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ"
  },
  ["vim-wakatime"] = {
    loaded = true,
    path = "/Users/sharan/.local/share/nvim/site/pack/packer/start/vim-wakatime"
  },
  ["vscode-go"] = {
    loaded = true,
    path = "/Users/sharan/.local/share/nvim/site/pack/packer/start/vscode-go"
  },
  ["zephyr-nvim"] = {
    config = { "\27LJ\2\n&\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\vzephyr\frequire\0" },
    loaded = true,
    path = "/Users/sharan/.local/share/nvim/site/pack/packer/start/zephyr-nvim"
  }
}

-- Config for: zephyr-nvim
try_loadstring("\27LJ\2\n&\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\vzephyr\frequire\0", "config", "zephyr-nvim")
-- Config for: gitsigns.nvim
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
-- Config for: galaxyline.nvim
try_loadstring("\27LJ\2\n&\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\vgalaxy\frequire\0", "config", "galaxyline.nvim")
END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
