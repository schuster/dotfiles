;; Conventional max line length in Racket is 102 columns
(add-hook 'racket-mode-hook (lambda () (column-marker-1 102)))
(add-hook 'racket-mode-hook (lambda () (setq fill-column 102)))

;; Conventional max line length in Rust is 102 columns
(add-hook 'rust-mode-hook (lambda () (column-marker-1 99)))
(add-hook 'rust-mode-hook (lambda () (setq fill-column 99)))

;; Show a column marker in markdown mode and disable electric indent
(add-hook 'markdown-mode-hook (lambda () (column-marker-1 80)))
(add-hook 'markdown-mode-hook (lambda () (electric-indent-local-mode -1)))

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

;; Highlight comment annotations in all programming modes (via
;; http://emacsredux.com/blog/2013/07/24/highlight-comment-annotations/)
(defun font-lock-comment-annotations ()
  "Highlight a bunch of well known comment annotations.

This functions should be added to the hooks of major modes for programming."
  (font-lock-add-keywords
   nil '(("\\<\\(FIX\\(ME\\)?\\|TODO\\|OPTIMIZE\\|HACK\\|REFACTOR\\|BUG\\):"
          1 font-lock-warning-face t))))

(add-hook 'prog-mode-hook 'font-lock-comment-annotations)

(add-hook 'text-mode-hook 'flyspell-mode)
