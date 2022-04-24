-- : Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  local packer_url = "https://github.com/wbthomason/packer.nvim"
  packer_bootstrap = fn.system({ "git", "clone", "--depth", "1", packer_url, install_path })
end

-- : Checking package
local ok, packer = pcall(require, "packer")
if not ok then
  return
end

-- : Plugins
return packer.startup(function(use)
    -- The own Packer
    use "wbthomason/packer.nvim"
    -- Colorscheme theme
    use 'folke/tokyonight.nvim'
    -- Status Line
    use 'nvim-lualine/lualine.nvim'
    -- Tab line
    use 'akinsho/bufferline.nvim'
    -- Dev icons
    use 'kyazdani42/nvim-web-devicons'

    -- Setup config after clone
    if packer_bootstrap then
      require("packer").sync()
    end
end)

