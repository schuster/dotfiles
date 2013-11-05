;; Conventional max line length in Racket is 102 columns
(add-hook 'scheme-mode-hook (lambda () (column-marker-1 102)))
(add-hook 'scheme-mode-hook (lambda () (setq-default fill-column 102)))

;; Show a column marker in markdown mode
(add-hook 'markdown-mode-hook (lambda () (column-marker-1 80)))

;; Paredit for all S-expression-based programming modes
(add-hook 'emacs-lisp-mode-hook 'paredit-mode)
(add-hook 'scheme-mode-hook 'paredit-mode)
