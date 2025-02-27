vim.opt.number = true
-- vim.opt.ruler = true
vim.opt.swapfile = false
-- vim.opt.expandtab = true
-- set clipboard+=unnamedplus
-- set belloff=all
-- set splitright
vim.opt.splitright = true
vim.opt.cursorcolumn = true
vim.opt.cursorline = true
-- set hidden

local vimrcgroup = vim.api.nvim_create_augroup('vimrc', { clear = false })
vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
  pattern = '*.js',
  group = vimrcgroup,
  command = 'set shiftwidth=4 expandtab',
})
vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
  pattern = '*.spec',
  group = vimrcgroup,
  command = 'setf markdown',
})
vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
  pattern = '*.j2',
  group = vimrcgroup,
  command = 'setf jinja2',
})
