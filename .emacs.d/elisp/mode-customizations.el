;; Racket is not on the emacs path for MacOS by default (see
;; https://www.racket-mode.com/#Configure)
(if (equal 'darwin system-type)
    (setq racket-program "/Applications/Racket/bin/racket"))

;; Conventional max line length in Racket is 102 columns
(add-hook 'racket-mode-hook (lambda () (setq fill-column 102)))

;; Conventional max line length in Rust is 102 columns
(add-hook 'rust-mode-hook (lambda () (setq fill-column 99)))

;; Disable electric indent in markdown mode
(add-hook 'markdown-mode-hook (lambda () (electric-indent-local-mode -1)))

;; Paredit for all S-expression-based programming modes
(add-hook 'emacs-lisp-mode-hook 'paredit-mode)
(add-hook 'scheme-mode-hook 'paredit-mode)
(add-hook 'racket-mode-hook 'paredit-mode)

;; Indentation for Fundamentals 2 at Northeastern
(add-hook 'java-mode-hook
          (lambda ()
            (setq tab-width 2)
            (setq c-basic-offset 2)
            (setq show-trailing-whitespace nil)))

;; Custom indentations for racket-mode
(put 'ls-test-case 'racket-indent-function 1)
(put 'let-agent 'racket-indent-function 1)
(put 'redex-let 'racket-indent-function 2)
(put 'redex-let* 'racket-indent-function 2)
(put 'test-equal? 'racket-indent-function 1)
(put 'test-false 'racket-indent-function 1)
(put 'test-graph-equal? 'racket-indent-function 1)
(put 'test-true 'racket-indent-function 1)
(put 'test-not-false 'racket-indent-function 1)
(put 'test-exn 'racket-indent-function 1)

;; Custom indentations for my research
(put 'eval-and-then 'racket-indent-function 2)
(put 'eval-and-then* 'racket-indent-function 2)

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
   nil '(("\\<\\(FIX\\(ME\\)?\\|TODO\\|NOTE\\|OPTIMIZE\\|HACK\\|REFACTOR\\|BUG\\):"
          1 font-lock-warning-face t))))

(add-hook 'prog-mode-hook 'font-lock-comment-annotations)
(add-hook 'sgml-mode-hook 'font-lock-comment-annotations)
;; AUCTeX capitalizes its hooks differently. Commenting out tex-mode-hook for
;; now, because it seems to overlap with TeX-mode-hook in unexpected ways
;; (add-hook 'tex-mode-hook 'font-lock-comment-annotations)
(add-hook 'TeX-mode-hook 'font-lock-comment-annotations)

;; For some reason AUCTeX seems to override my comment annotation highlights on
;; save, so this hook re-enables them in that mode after every save
(defun enable-annotations-in-latex-mode ()
  (if (eq major-mode `latex-mode) (font-lock-comment-annotations)))
(add-hook 'after-save-hook 'enable-annotations-in-latex-mode)

(add-hook 'text-mode-hook 'flyspell-mode)

;; Magit customizations
(setq-default magit-diff-refine-hunk 'all)
