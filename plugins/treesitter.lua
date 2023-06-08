local function _1_(_, opts)
  opts.ensure_installed = (require("astronvim.utils")).list_insert_unique(opts.ensure_installed, {})
  return nil
end
return {"nvim-treesitter/nvim-treesitter", opts = _1_}
