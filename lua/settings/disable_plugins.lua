local builtInPlugins = {
  "zip",
  "zipPlugin",
  "gzip",
  "tar",
  "tarPlugin",
  "getscript",
  "getscriptPlugin",
  "rrhelper",
  "vimball",
  "vimballPlugin",
  "2html_plugin",
  "netrw",
  "netrwPlugin",
  "netrwSettings",
  "netrwFileHandlers",
  "logipat"
}

for null, plugin in pairs(builtInPlugins) do
  vim.g["loaded_" .. plugin] = 1
end
