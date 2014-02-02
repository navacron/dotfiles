
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

(defun my-indent-region (N)
  (interactive "p")
  (if (use-region-p)
      (progn (indent-rigidly (region-beginning) (region-end) (* N 4))
             (setq deactivate-mark nil))
    (self-insert-command N)))

(defun my-unindent-region (N)
  (interactive "p")
  (if (use-region-p)
      (progn (indent-rigidly (region-beginning) (region-end) (* N -4))
             (setq deactivate-mark nil))
    (self-insert-command N)))

(global-set-key ">" 'my-indent-region)
(global-set-key "<" 'my-unindent-region)

;; ---------------------------
;; -- Python Mode configuration --
;; ---------------------------
(load "py-config.el")
(load "sh-config.el")
(load "lisp-config.el")



