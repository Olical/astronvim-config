local utils = require("astronvim.utils")
local uu = require("user.util")
local function _1_(_, opts)
  opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, "clojure_lsp")
  return nil
end
local function _2_(_, opts)
  if (opts.ensure_installed ~= "all") then
    opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, "clojure")
    return nil
  else
    return nil
  end
end
local function _4_()
  vim.g["conjure#eval#result_register"] = "*"
  vim.g["conjure#log#botright"] = true
  vim.g["conjure#mapping#doc_word"] = "gk"
  local function _5_()
    return vim.diagnostic.disable(0)
  end
  vim.api.nvim_create_autocmd("BufNewFile", {callback = _5_, desc = "Conjure Log disable LSP diagnostics", group = vim.api.nvim_create_augroup("conjure_log_disable_lsp", {clear = true}), pattern = {"conjure-log-*"}})
  local function _6_()
    vim.bo.commentstring = ";; %s"
    return nil
  end
  return vim.api.nvim_create_autocmd("FileType", {callback = _6_, desc = "Lisp style line comment", group = vim.api.nvim_create_augroup("comment_config", {clear = true}), pattern = {"clojure"}})
end
return {uu.tx("clojure-vim/vim-jack-in", {ft = "clojure", cmd = "Clj", lazy = true}), uu.tx("williamboman/mason-lspconfig.nvim", {opts = _1_}), uu.tx("nvim-treesitter/nvim-treesitter", {opts = _2_}), uu.tx("Olical/conjure", {ft = {"clojure"}, lazy = true, init = _4_}), uu.tx("Olical/AnsiEsc"), uu.tx("PaterJason/cmp-conjure", {ft = {"clojure", "fennel"}})}
