;;; private-lang/go/config.el -*- lexical-binding: t; -*-

(after! go-mode
  (add-hook 'go-mode-hook #'lsp-deferred)
  ;; Set up before-save hooks to format buffer and add/delete imports.
  ;; Make sure you don't have other gofmt/goimports hooks enabled.
  (defun my-go-save-hooks ()
    (add-hook 'before-save-hook #'lsp-format-buffer t t))
  (add-hook 'go-mode-hook #'my-go-save-hooks))

(after! go-mode
  (set-ligatures! 'go-mode
    :def "func"
    :for "for"
    :null "nil"
    ))

(after! lsp-go
  (setq lsp-gopls-staticcheck t)

  (setq lsp-gopls-complete-unimported t)
  (setq lsp-gopls-analyses
        '((unusedparams . t)
          (unusedwrite . t)
          (unusedvariable . t)
          (unusedresult . t)
          (nilness . t)
          (shadow . t)
          (infertypeargs . t)
          ))
  (setq lsp-go-inlay-hints-enabled t)  ; Ensure inlay hints are enabled
  (setq lsp-go-inlay-hints-include-parameter-names t)  ; Include parameter names in function calls
  (setq lsp-go-inlay-hints-parameter-hints t)  ; Enable parameter hints
  (setq lsp-go-inlay-hints-type-hints t)  ; Enable type hints

  ;; (lsp-register-custom-settings
  ;;  '(("gopls.inlayHints" ((hints . ((assignVariableTypes . t)
  ;;                                   (compositeLiteralFields . t)
  ;;                                   (compositeLiteralTypes . t)
  ;;                                   (constantValues . t)
  ;;                                   (functionTypeParameters . t)
  ;;                                   (parameterNames . t)
  ;;                                   (rangeVariableTypes . t)))) t)))
  )
