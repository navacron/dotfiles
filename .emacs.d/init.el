
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
(global-set-key "\M-l" 'other-window)

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

(defun vi-open-line-above ()
  "Insert a newline above the current line and put point at beginning."
  (interactive)
  (unless (bolp)
    (beginning-of-line))
  (newline)
  (forward-line -1)
  (indent-according-to-mode))

(defun vi-open-line-below ()
  "Insert a newline below the current line and put point at beginning."
  (interactive)
  (unless (eolp)
    (end-of-line))
  (newline-and-indent))

(defun vi-open-line (&optional abovep)
  "Insert a newline below the current line and put point at beginning.
With a prefix argument, insert a newline above the current line."
  (interactive "P")
  (if abovep
      (vi-open-line-above)
    (vi-open-line-below)))

(defun kill-current-line (&optional n)
  (interactive "p")
  (save-excursion
    (beginning-of-line)
    (let ((kill-whole-line t))
      (kill-line n))))

(define-key global-map [(meta o)] 'vi-open-line-below)
(define-key global-map [(meta p)] 'vi-open-line-below)


;; ---------------------------
;; -- Python Mode configuration --
;; ---------------------------
(load "py-config.el")
(load "sh-config.el")
(load "lisp-config.el")



