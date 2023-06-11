(local uu (require :user.util))

[(uu.tx
   :williamboman/mason-lspconfig.nvim
   {:opts (fn [_ opts]
            (set opts.ensure_installed
                 ((. (require :astronvim.utils) :list_insert_unique) opts.ensure_installed
                  [:fennel_language_server])))})
 (uu.tx
   :jay-babu/mason-null-ls.nvim
   {:opts (fn [_ opts]
            (set opts.ensure_installed
                 ((. (require :astronvim.utils) :list_insert_unique) opts.ensure_installed
                  {})))})
 (uu.tx
   :jay-babu/mason-nvim-dap.nvim
   {:opts (fn [_ opts]
            (set opts.ensure_installed
                 ((. (require :astronvim.utils) :list_insert_unique) opts.ensure_installed
                  {})))})]
