{1 :nvim-treesitter/nvim-treesitter
 :opts (fn [_ opts]
         (set opts.ensure_installed
              ((. (require :astronvim.utils) :list_insert_unique) opts.ensure_installed
                                                                  {})))}

