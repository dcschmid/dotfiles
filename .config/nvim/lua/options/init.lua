local opt = vim.opt

opt.history = 500                            -- Sets how many lines of history VIM has to remember
opt.autoread = true                          -- Set to autoread when a file is changed from the outside
opt.completeopt = 'menuone,noinsert,longest' -- Settins for completion menu
opt.expandtab = true                         -- To insert space characters whenever the tab key is pressed
opt.linebreak = false                        -- dont use linebreaks
opt.list = true                              --
opt.hidden = true
opt.ignorecase = true
opt.mouse = 'nv'
opt.number = true
opt.scrolloff = 1
opt.shiftwidth = 2
opt.smartcase = true
opt.splitright = true
opt.splitbelow = true
opt.swapfile = false
opt.tabstop = 2
opt.termguicolors = true
opt.undofile = true
opt.updatetime = 1500
opt.wrap = false
vim.cmd('colorscheme iceberg')
