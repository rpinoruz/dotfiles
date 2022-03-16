-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.options = {
  cmdheight = 2,
  ruler = true,
  mapleader = ",",
  relativenumber = true,
}

M.ui = {
   theme = "palenight",
   italic_comments = true,
}

local userPlugins = require "custom.plugins" -- path to table
local pluginConfs = require "custom.plugins.configs"

M.plugins = {
  install = userPlugins,
  options = {
    lspconfig = {
      setup_lspconf = "custom.plugins.lspconfig"
    },
  },
   default_plugin_config_replace = {
      nvim_treesitter = pluginConfs.treesitter,
   },
}

return M
