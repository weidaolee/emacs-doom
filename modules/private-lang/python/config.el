;;; private-lang/python/config.el -*- lexical-binding: t; -*-

;; (add-hook! python-mode
;;   (setq-local flycheck-enabled-checkers '(python-pyright python-flake8))
;;   (setq-local flycheck-disabled-checkers '(python-pylint python-mypy))

;;   ;; Explicitly select Pyright as the checker for Flycheck in Python mode
;;   (flycheck-select-checker 'python-pyright)

;;   ;; Disable LSP diagnostics for Python mode specifically
;;   (setq-local lsp-diagnostics-provider :none))

(after! python
  (setq python-prettify-symbols-alist nil))

;; (after! lsp-pyright
;;   (setq lsp-pyright-typechecking-mode "off"))
