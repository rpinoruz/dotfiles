local map = require("core.utils").map
local opts = { silent = false }
map('n', 'Y', 'y$')

map('', '<space>', '/', opts)
map('', '<C-space>', '?', opts)

-- Faster search and replace
map('n', '<leader>s', ':%s//g<Left><Left>', opts)
