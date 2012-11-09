;;;; Jonathan Schuster's .emacs file

;; TODO:
;; enable electric parens (or similar)
;; use load-library for most things
;; use the new official color theme mechanisms
;; Trash (most of) my saved major modes; get Racket/Scheme working
;; Move custom code to the "correct" place (.elisp? .emacs.d?)
;; Write an rsync script to deploy updates
;; aliases (e.g. qrr)
;; Think about using column-marker mode for code (with a light gray background)
;; indentation: spaces only (with comments to enable other modes?)

;; TODO: put load path for elisp here
;(add-to-list 'load-path "~/.elisp")

;; Sensible defaults
(setq inhibit-startup-message t)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(setq visible-bell t)
(setq require-final-newline 'ask)
(setq make-backup-files nil)
(setq-default fill-column 80)

;; Key bindings
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)

;; Mac key behaviors
(setq mac-command-modifier 'meta)

;; Command aliases
(defalias 'qrr 'query-replace-regexp)

;; Color theme
(load-theme 'schu t) ; don't prompt to ask if theme is "safe"



;; -----------------------------------------------------------------------------

;(global-font-lock-mode t)


;; Color Scheme
;(add-to-list 'load-path "~/.elisp/color-theme")
;(require 'color-theme)
;(color-theme-initialize)
;(color-theme-schu)



; enable system clipboard
;(setq x-select-enable-clipboard t)

; highlight trailing whitespace
;(setq show-trailing-whitespace t)


;(add-to-list 'load-path "~/.elisp/major-modes")
;(load "major-modes/setup")

;;; Minor Modes
;(column-number-mode t)

;(autoload 'column-marker
 ; "column-marker"
;  "Minor mode for highlighting columns"
;  t)
; Is this really needed? : (require 'column-marker)

; add in soft word-wrap for text mode
; (add-hook 'text-mode-hook 'longlines-mode)



;;------------------------------------------------------------------------------
;; Indentation

;(setq tab-width 2)
;(setq c-basic-offset tab-width) ; c-basic-offset should always match tab-width
;(setq-default indent-tabs-mode nil)
