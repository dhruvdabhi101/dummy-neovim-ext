package.loaded['greetings'] = nil
package.loaded['greetings.awesome-module'] = nil
package.loaded['dev'] = nil

vim.api.nvim_set_keymap('n', ',r', ':luafile dev/init.lua<Return>', {})

Greetings = require('greetings')
vim.api.nvim_set_keymap('n',',w',':lua Greetings.greet()<Return>',{})
