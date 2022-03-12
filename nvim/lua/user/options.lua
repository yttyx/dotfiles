local options = {
  autoindent = true,                       -- copy indent from line when creating a new line
  backup = false,                          -- creates a backup file
  clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
  colorcolumn = "160",                     -- highlight screen column 160
--  cmdheight = 2,                         -- more space in the neovim command line for displaying messages
  conceallevel = 0,                        -- so that `` is visible in markdown files
  completeopt = "menuone,noinsert,noselect", -- options for insert mode completion
  cursorline = true,                       -- highlight the current line
  errorbells = false,                      -- Disable beeps
  expandtab = true,                        -- expand tabs to spaces
  fileencoding = "utf-8",                  -- the encoding written to a file
--  guicursor = "",                        -- TBW
  hidden = true,                           -- TBW
  hlsearch = false,                        -- highlight all matches on previous search pattern
  ignorecase = true,                       -- ignore case in search patterns
--  mouse = "",                            -- TBW disable neovim mouse use 
  number = true,                           -- set numbered lines
  numberwidth = 5,                         -- set number column width to 2 {default 4}
  pumheight = 10,                          -- pop up menu height
  relativenumber = true,                   -- set relative numbered lines
  scrolloff = 8,                           -- scroll when at 8 lines before top or bottom of page
  shiftwidth = 4,                          -- the number of spaces inserted for each indentation
  showmode = false,                        -- we don't need to see things like -- INSERT -- anymore
  showtabline = 2,                         -- always show tabs
  sidescrolloff = 8,
  signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time
  smartcase = true,                        -- smart case
  smartindent = true,                      -- make indenting smarter again
  splitbelow = true,                       -- force all horizontal splits to go below current window
  splitright = true,                       -- force all vertical splits to go to the right of current window
  swapfile = false,                        -- don't create a swapfile
  tabstop = 4,                             -- insert 4 spaces for a tab
--  termguicolors = true,                    -- set term gui colors (most terminals support this)
  timeoutlen = 100,                        -- time to wait for a mapped sequence to complete (in milliseconds)
  title = true,                            -- set window title                             -- set window title
  undofile = true,                         -- enable persistent undo
  undodir = "~/.config/nvim/undodir",      -- directory for undo files
  updatetime = 300,                        -- faster completion (4000ms default)
  wrap = false,                            -- display lines as one long line
  writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
