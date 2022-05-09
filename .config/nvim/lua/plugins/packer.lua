-- : Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  local packer_url = "https://github.com/wbthomason/packer.nvim"
  packer_bootstrap = fn.system({ "git", "clone", "--depth", "1", packer_url, install_path })
  cmd [[ packadd packer.nvim ]]
end

-- : Checking package
local ok, packer = pcall(require, 'packer')
if not ok then
  return
end

-- : Plugins
return packer.startup(
  function(use)
    -- The own Packer
    use 'wbthomason/packer.nvim'
    -- Cache plugins
    use 'lewis6991/impatient.nvim'
    -- Common functions for some plugins
    use 'nvim-lua/plenary.nvim'
    -- Dev icons
    use 'kyazdani42/nvim-web-devicons'
    -- Treesitter syntax highlight
    use 'nvim-treesitter/nvim-treesitter'
    -- Colorscheme theme
    use 'folke/tokyonight.nvim'
    -- Status Line
    use 'nvim-lualine/lualine.nvim'
    -- Tab line
    use 'akinsho/bufferline.nvim'
    -- Autopairs
    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'
    -- Comment keybindings
    use 'numToStr/Comment.nvim'
    -- Good Terminal made easy
    use 'akinsho/toggleterm.nvim'
    -- Indentation guides
    use "lukas-reineke/indent-blankline.nvim"
    -- Git integration
    use 'lewis6991/gitsigns.nvim'
    -- Fuzzy finder
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-file-browser.nvim'
    use 'nvim-telescope/telescope-project.nvim'
    -- Greeter
    use 'goolord/alpha-nvim'

    -- Setup config after clone
    if packer_bootstrap then
      require("packer").sync()
    end
  end
)

