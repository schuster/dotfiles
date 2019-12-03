;; -*- mode: Emacs-Lisp -*-
;;;; Jonathan Schuster's .emacs file

(add-to-list 'load-path "~/.emacs.d/elisp")

;; Package setup
(package-initialize) ; load all packages so they are available in this file
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; Sensible defaults
(customize-set-variable 'inhibit-startup-message t)
(customize-set-variable 'scroll-bar-mode nil)
(customize-set-variable 'tool-bar-mode nil)
(customize-set-variable 'menu-bar-mode nil)
(customize-set-variable 'visible-bell t)
(customize-set-variable 'require-final-newline 'ask)
(customize-set-variable 'make-backup-files nil)
(customize-set-variable 'fill-column 80)
(customize-set-variable 'column-number-mode t)
(customize-set-variable 'global-linum-mode t)

;; Personal preferences
(customize-set-variable 'show-trailing-whitespace t)
;; term-mode-hook
(add-hook 'term-mode-hook (lambda () (setq show-trailing-whitespace nil)))

;; Indentation
(customize-set-variable 'indent-tabs-mode nil)
(customize-set-variable 'tab-width 4) ; defines how to display an ASCII TAB character
(setq-default c-basic-offset 4) ; defines (very roughly) how many spaces the TAB key inserts

;; Key bindings
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-xm" 'execute-extended-command)
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-xO" 'other-window-previous)
(global-set-key "\M-{" 'paredit-wrap-square)

;; Mac key behaviors
(customize-set-variable 'mac-command-modifier 'meta)

;; Color theme
(when window-system
  (load-theme 'solarized-dark t)) ; don't prompt to ask if theme is "safe"

;; Scripts for custom commands, modes, etc.
(load-library "markdown-mode")
(load-library "custom-commands")
(load-library "mode-setup")
(load-library "mode-customizations")

;; Register the Redex input method
(register-input-method
 "redex" "UTF-8" 'quail-use-package
 "\\" "LaTeX-like input method for many characters."
 "~/.emacs.d/elisp/latin-redex")

;; Default start directory (for some reason it's "/" by default on OS X)
(setq default-directory "~/")

;; TODO: move this elsewhere
(require 'company-emoji)
(add-to-list 'company-backends 'company-emoji)
(put 'upcase-region 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (tuareg zenburn-theme scala-mode2 rust-mode racket-mode paredit markdown-mode magit erlang company-emoji column-marker color-theme-solarized auctex))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
