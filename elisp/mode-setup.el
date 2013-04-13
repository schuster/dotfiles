;; Quack mode for Racket
(require 'quack)

;; ParEdit
(autoload 'paredit-mode "paredit"
  "Minor mode for pseudo-structurally editing Lisp code." t)

;; File extensions/major mode bindings
(add-to-list 'auto-mode-alist '("\\.rkt$" . scheme-mode))
