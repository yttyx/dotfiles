--[[ This configuration is heavily based on chris@machine's dotfiles at:
     https://github.com/LunarVim/Neovim-from-scratch

     Status:
       - C++ error detection is starting to work
       - no code completion yet
       - no goto definition/declaration etc. yet
       - install nerdtree font for completion icons?
--]]


require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.colorscheme"
require "user.cmp"
require "user.lsp"
