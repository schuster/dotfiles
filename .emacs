;; -*- mode: Emacs-Lisp -*-
;;;; Jonathan Schuster's .emacs file

(add-to-list 'load-path "~/.emacs.d/elisp")

;; Package setup
(require 'package)
(package-initialize) ; load all packages so they are available in this file
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

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
;; term-mode-hook
(add-hook 'term-mode-hook (lambda () (setq show-trailing-whitespace nil)))

;; Indentation
(setq-default indent-tabs-mode nil)

;; Key bindings
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\M-{" 'paredit-wrap-square)

;; Mac key behaviors
(setq mac-command-modifier 'meta)

;; Color theme
(set-frame-parameter nil 'background-mode 'dark)
(when window-system
  (load-theme 'solarized t)) ; don't prompt to ask if theme is "safe"

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
