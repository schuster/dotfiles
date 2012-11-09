;;;; Jonathan Schuster's .emacs file

;; TODO:
;; find a way to centralize this whole setup (github?)
;; enable electric parens (or similar)
;; highlight trailing whitespace

(add-to-list 'load-path "~/.elisp")

;; Don't display the welcome message on startup
(setq inhibit-startup-message t)

;; Set initial frame size
;(setq initial-frame-alist 
 ;     '((height . 55)
;		(width . 80)))

;; Remove the scroll bar, tool bar, and menu bar
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

(setq visible-bell t)

(global-font-lock-mode t)

(setq require-final-newline 'ask)

;; Color Scheme
(add-to-list 'load-path "~/.elisp/color-theme")
(require 'color-theme)
(color-theme-initialize)
(color-theme-schu)

; make sure all files are saved with an empty line at the end
; files that don't have this often cause problems
(setq require-final-newline t)

; turn off backup copies of files
(setq make-backup-files nil)

; enable system clipboard
(setq x-select-enable-clipboard t)

; highlight trailing whitespace
(setq show-trailing-whitespace t)

;;;; Keyboard Shortcuts
; shortcut/replacement for M-x
(global-set-key "\C-x\C-m" 'execute-extended-command)

; reset bacward-kill-word to C-w, and move kill region to C-x C-k
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)

(defalias 'qrr 'query-replace-regexp)

(add-to-list 'load-path "~/.elisp/major-modes")
(load "major-modes/setup")

;;; Minor Modes
(column-number-mode t)

(autoload 'column-marker
  "column-marker"
  "Minor mode for highlighting columns"
  t)
; Is this really needed? : (require 'column-marker)

; add in soft word-wrap for text mode
; (add-hook 'text-mode-hook 'longlines-mode)

(setq-default fill-column 80)

;;------------------------------------------------------------------------------
;; Indentation

(setq tab-width 2)
(setq c-basic-offset tab-width) ; c-basic-offset should always match tab-width
(setq-default indent-tabs-mode nil)
