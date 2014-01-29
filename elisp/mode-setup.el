;; Quack mode for Racket
(require 'quack)

(require 'fractL)

;; ParEdit
(autoload 'paredit-mode "paredit"
  "Minor mode for pseudo-structurally editing Lisp code." t)

;; File extensions/major mode bindings
(add-to-list 'auto-mode-alist '("\\.rkt$" . scheme-mode))
(add-to-list 'auto-mode-alist '("\\.transit$" . fractL-mode))
(add-to-list 'auto-mode-alist '("\\.ttest$" . scheme-mode))
(add-to-list 'auto-mode-alist '("\\.k$" . k3-mode))
