vim.cmd [[let g:mapleader = ","]]

vim.opt.hidden = true                        --  Required to keep multiple buffers open multiple buffers
vim.opt.scrolloff = 5                        --  Keeps the selected line n lines above and under the borders 
vim.opt.encoding = "utf-8"                     --  The encoding displayed
vim.opt.pumheight = 10                       --  Makes popup menu smaller
vim.opt.fileencoding = "utf-8"                 --  The encoding written to file
vim.opt.ruler  = true            			           --  Show the cursor position all the time
vim.opt.cmdheight=2                        --  More space for displaying messages
vim.opt.mouse=a                            --  Enable your mouse
vim.opt.splitbelow = true                        --  Horizontal splits will automatically be below
vim.opt.splitright = true                        --  Vertical splits will automatically be to the right
vim.opt.conceallevel=0                     --  So that I can see `` in markdown files
vim.opt.tabstop=2                          --  Insert 2 spaces for a tab
vim.opt.shiftwidth=2                       --  Change the number of space characters inserted for indentation
vim.opt.smarttab = true                          --  Makes tabbing smarter will realize you have 2 vs 4
vim.opt.expandtab = true                         --  Converts tabs to spaces
vim.opt.smartindent = true                       --  Makes indenting smart
vim.opt.autoindent = true                        --  Good auto indent
vim.opt.laststatus=0                       --  Always display the status line
vim.opt.number = true
vim.opt.relativenumber = true             --  Line numbers
vim.opt.showtabline=2                      --  Always show tabs
vim.opt.updatetime=300                     --  Faster completion
vim.opt.timeoutlen=500                     --  By default timeoutlen is 1000 ms
vim.opt.clipboard= "unnamedplus"              --  Copy paste between vim and everything else
vim.opt.termguicolors = true

vim.cmd [[au! BufWritePost $MYVIMRC source %]]      -- auto source when writing to init.vm alternatively you can run :source $MYVIMRC

