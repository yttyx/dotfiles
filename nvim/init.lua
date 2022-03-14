--[[ This configuration is heavily based on chris@machine's dotfiles at:
     https://github.com/LunarVim/Neovim-from-scratch

    Some useful URLs:
        List keybindings
            https://github.com/liuchengxu/vim-which-key
    LSP:
        https://github.com/neovim/nvim-lspconfig
        https://github.com/neovim/nvim-lspconfig/blob/master/test/minimal_init.lua
        
        https://microsoft.github.io/language-server-protocol/implementors/servers/
        https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#clangd
        https://clangd.llvm.org/
    Status:
        - C++ error detection is starting to work
        - no goto definition/declaration etc. yet
        - install nerdtree font for completion icons?
        - what is the project root dir as used by clang?
    General:
        nvim -V10<filepath> to put start up information into a log file
--]]

require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.colorscheme"
require "user.cmp"
require "user.lsp.init"
require "user.telescope"
require "user.treesitter"
require "user.whichkey"
