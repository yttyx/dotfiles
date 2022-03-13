--[[ This configuration is heavily based on chris@machine's dotfiles at:
     https://github.com/LunarVim/Neovim-from-scratch

     - Some useful URLs:
       List keybindings
       https://github.com/liuchengxu/vim-which-key

     Status:
       - C++ error detection is starting to work
       - no goto definition/declaration etc. yet
       - install nerdtree font for completion icons?

--]]


require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.colorscheme"
require "user.cmp"
require "user.lsp"
require "user.telescope"
require "user.treesitter"
require "user.whichkey"
