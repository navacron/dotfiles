
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
;; M-x package-refresh-contents
;; M-x package-install RET elpy RET

(package-initialize)
(elpy-enable)

(add-hook 'python-mode-hook '(lambda ()
			       (local-set-key "\C-c!" 'python-shell-switch-to-shell)
			       ))
