
(add-to-list 'load-path "~/.emacs.d")

(menu-bar-mode -1)

;; ------------
;; -- Backup --
;; ------------
(setq backup-directory-alist `(("." . "~/.emacs.d/backup")))
(setq backup-by-copying t)
(setq delete-old-versions t
  kept-new-versions 6
  kept-old-versions 2
  version-control t)

;; ------------
;; -- Macros --
;; ------------
(global-set-key "\M-o" 'other-window)

;; ---------------------------
;; -- Python Mode configuration --
;; ---------------------------
(load "py-config.el")
