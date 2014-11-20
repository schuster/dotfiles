(require 'fractL)

;; ParEdit
(autoload 'paredit-mode "paredit"
  "Minor mode for pseudo-structurally editing Lisp code." t)

;; File extensions/major mode bindings
(add-to-list 'auto-mode-alist '("\\.rkt$" . racket-mode))
(add-to-list 'auto-mode-alist '("\\.transit$" . fractL-mode))
(add-to-list 'auto-mode-alist '("\\.ls$" . racket-mode))
(add-to-list 'auto-mode-alist '("\\.ttest$" . racket-mode))
(add-to-list 'auto-mode-alist '("\\.k$" . k3-mode))

;; Set up ispell for OSX
(if (eq system-type 'darwin)
  (setq ispell-program-name "/usr/local/bin/aspell"))
