(local uu (require :user.util))

{:n {:<leader>bt (uu.tx ":%s/\\s\\+$//e<cr>" {:desc "Delete trailing whitespace"})}
 :t {:jk (uu.tx "<c-\\><c-n>" {:desc "Enter Normal mode"})}}
