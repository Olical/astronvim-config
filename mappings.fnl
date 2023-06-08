{:n {:<leader>b {:name :Buffers}
     :<leader>bD {1 (fn []
                      ((. (require :astronvim.utils.status) :heirline
                          :buffer_picker) (fn [bufnr]
                          ((. (require :astronvim.utils.buffer)
                              :close) bufnr))))
                  :desc "Pick to close"}
     :<leader>bn {1 "<cmd>tabnew<cr>" :desc "New tab"}}
 :t {}}

