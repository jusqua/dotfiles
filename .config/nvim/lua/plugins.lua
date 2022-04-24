-- : Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  local packer_url = "https://github.com/wbthomason/packer.nvim"
  packer_bootstrap = fn.system({ "git", "clone", "--depth", "1", packer_url, install_path })
  vim.cmd [[ packadd packer.nvim ]]
end

-- : Checking package
local ok, packer = pcall(require, 'packer')
if not ok then
  return
end

-- : Plugins
return packer.startup(function(use)
  -- The own Packer
  use 'wbthomason/packer.nvim'

  -- Dev icons
  use 'kyazdani42/nvim-web-devicons'

  -- Colorscheme theme
  use {
    'folke/tokyonight.nvim',
    config = [[ require "setup.tokyonight" ]]
  }

  -- Status Line
  use {
    'nvim-lualine/lualine.nvim',
    config = [[ require "setup.lualine" ]]
  }

  -- Tab line
  use {
    'akinsho/bufferline.nvim',
    config = [[ require "setup.bufferline" ]]
  }

  -- Autopairs
  use {
    'windwp/nvim-autopairs',
    config = [[ require "setup.autopairs" ]]
  }

  -- Comment keybindings
  use {
    'numToStr/Comment.nvim',
    config = [[ require "setup.comment" ]]
  }

  -- Setup config after clone
  if packer_bootstrap then
    require("packer").sync()
  end
end)

