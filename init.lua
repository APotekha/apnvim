_G.__luacache_config = {
  chunks = {
    enable = true,
    path = vim.fn.stdpath('cache') .. '/luacache_chunks',
  },
  modpaths = {
    enable = true,
    path = vim.fn.stdpath('cache') .. '/luacache_modpaths',
  }
}
require('plugins.plugins')
require('settings.settings')
require('settings.disable_plugins')
require('settings.keymap')
