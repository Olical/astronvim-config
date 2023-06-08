local function _1_()
  local function _2_(bufnr)
    return (require("astronvim.utils.buffer")).close(bufnr)
  end
  return (require("astronvim.utils.status")).heirline.buffer_picker(_2_)
end
return {n = {["<leader>b"] = {name = "Buffers"}, ["<leader>bD"] = {_1_, desc = "Pick to close"}, ["<leader>bn"] = {"<cmd>tabnew<cr>", desc = "New tab"}}, t = {}}
