;;;; Jonathan Schuster's .emacs file

;; TODO:
;; enable electric parens (or similar)
;; use load-library for most things
;; Write an rsync script to deploy updates
;; Think about using column-marker mode for code (with a light gray background)
;; indentation: spaces only (with comments to enable other modes?)
;; get custom-commands file to load (for things like renaming current buffer and file simultaneously)

;; TODO: put load path for elisp here
;(add-to-list 'load-path "~/.emacs.d/elisp")

;; Sensible defaults
(setq inhibit-startup-message t)
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(setq visible-bell t)
(setq require-final-newline 'ask)
(setq make-backup-files nil)
(setq-default fill-column 80)
(column-number-mode 1)
(global-linum-mode 1)

;; Personal preferences
(setq-default show-trailing-whitespace t)

;; Indentation
(setq-default indent-tabs-mode nil)
;(setq tab-width 2)
;(setq c-basic-offset tab-width) ; c-basic-offset should always match tab-width

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

;; Major modes
(setq auto-mode-alist
      (append '(("\\.rkt$" . scheme-mode)) auto-mode-alist))

;; Quack mode for Racket
(require 'quack)

;; ParEdit
(autoload 'paredit-mode "paredit"
  "Minor mode for pseudo-structurally editing Lisp code." t)
