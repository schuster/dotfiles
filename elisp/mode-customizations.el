;; Conventional max line length in Racket is 102 columns
(add-hook 'racket-mode-hook (lambda () (column-marker-1 102)))
(add-hook 'racket-mode-hook (lambda () (setq fill-column 102)))

;; Show a column marker in markdown mode
(add-hook 'markdown-mode-hook (lambda () (column-marker-1 80)))

;; Paredit for all S-expression-based programming modes
(add-hook 'emacs-lisp-mode-hook 'paredit-mode)
(add-hook 'scheme-mode-hook 'paredit-mode)
(add-hook 'racket-mode-hook 'paredit-mode)

;; Fix magit commit message editor, as seen here: http://stackoverflow.com/a/19265280/21957
(if (equal 'darwin system-type)
    (set-variable 'magit-emacsclient-executable "/usr/local/bin/emacsclient"))

;; AUCTeX settings
;; AUCTeX quickstart says to enable these in order to support many other LaTeX packages
(setq TeX-auto-save t)
(setq TeX-parse-self t)
