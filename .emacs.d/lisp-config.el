
;; setup load-path and autoloads
(add-to-list 'load-path "~/Documents/lisp/slime")
(require 'slime-autoloads)


;; Set your lisp system and, optionally, some contribs
(setq inferior-lisp-program "/usr/local/bin/sbcl")

(setq scheme-program-name "/usr/local/bin/mit-scheme")
(require 'xscheme)
