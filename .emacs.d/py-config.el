
(add-hook 'python-mode-hook '(lambda ()
			       (local-set-key "\C-c!" 'python-shell-switch-to-shell)
			       ))
