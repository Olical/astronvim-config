local uu = require("user.util")
local utils = uu.autoload("astronvim.utils")
local lspconfig = uu.autoload("lspconfig")
local function _1_(_, opts)
  opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, {"fennel_language_server"})
  local function _2_()
    lspconfig.lua_ls.setup({settings = {Lua = {diagnostics = {globals = {"vim"}}}}})
    return lspconfig.fennel_language_server.setup({settings = {fennel = {diagnostics = {globals = {"vim"}}}}})
  end
  opts.handlers.lua_ls = _2_
  return nil
end
local function _3_(_, opts)
  opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, {})
  return nil
end
local function _4_(_, opts)
  opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed)
  return nil
end
return {uu.tx("williamboman/mason-lspconfig.nvim", {opts = _1_}), uu.tx("jay-babu/mason-null-ls.nvim", {opts = _3_}), uu.tx("jay-babu/mason-nvim-dap.nvim", {opts = _4_})}
