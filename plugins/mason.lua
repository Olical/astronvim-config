local function _1_(_, opts)
  opts.ensure_installed = (require("astronvim.utils")).list_insert_unique(opts.ensure_installed, {})
  return nil
end
local function _2_(_, opts)
  opts.ensure_installed = (require("astronvim.utils")).list_insert_unique(opts.ensure_installed, {})
  return nil
end
local function _3_(_, opts)
  opts.ensure_installed = (require("astronvim.utils")).list_insert_unique(opts.ensure_installed, {})
  return nil
end
return {{"williamboman/mason-lspconfig.nvim", opts = _1_}, {"jay-babu/mason-null-ls.nvim", opts = _2_}, {"jay-babu/mason-nvim-dap.nvim", opts = _3_}}
