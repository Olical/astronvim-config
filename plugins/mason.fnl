(local uu (require :user.util))
(local utils (uu.autoload :astronvim.utils))
(local lspconfig (uu.autoload :lspconfig))

[(uu.tx
   :williamboman/mason-lspconfig.nvim
   {:opts (fn [_ opts]
            (set opts.ensure_installed (utils.list_insert_unique opts.ensure_installed [:fennel_language_server]))
            (set opts.handlers.lua_ls
                 (fn []
                   (lspconfig.lua_ls.setup
                     {:settings {:Lua {:diagnostics {:globals [:vim]}}}})
                   (lspconfig.fennel_language_server.setup
                     {:settings {:fennel {:diagnostics {:globals [:vim]}}}}))))})
 (uu.tx
   :jay-babu/mason-null-ls.nvim
   {:opts (fn [_ opts]
            (set opts.ensure_installed (utils.list_insert_unique opts.ensure_installed [])))})
 (uu.tx
   :jay-babu/mason-nvim-dap.nvim
   {:opts (fn [_ opts]
            (set opts.ensure_installed (utils.list_insert_unique opts.ensure_installed)))})]
