;;; private-lang/config.el -*- lexical-binding: t; -*-

(add-to-list 'auto-mode-alist '(".clang-format\\'" . yaml-mode))

(after! lsp-mode
  (setq lsp-clangd-version "17.0.3"))

;;; Clang
(after! lsp-clangd
  (setq lsp-clients-clangd-args
        '(
          ;;; clangd compilation flags options ;;;
          "--all-scopes-completion"
          "--background-index"
          "--background-index-priority=normal"
          "--clang-tidy"
          "--completion-style=bundled"
          "--header-insertion=iwyu"
          "--header-insertion-decorators"
          "--import-insertions"
          ;;; clangd miscellaneous options ;;;
          "-j=12"
          "--malloc-trim"
          "--pch-storage=memory"
          ;;; clangd protocol and logging options ;;;
          ))
  (set-lsp-priority! 'clangd 2))

(after! cc-mode
  ;; Set basic indentation to 4 spaces
  ;; (setq-default c-basic-offset 4)

  ;; Customize indentation for specific syntactic elements
  (setq-default c-offsets-alist
                `((inexpr-class . +)
                  (inexpr-statement . +)
                  (lambda-intro-cont . +)
                  (template-args-cont c-lineup-template-args +)
                  (incomposition . +)
                  (inmodule . +)
                  (innamespace . +)
                  (inextern-lang . +)
                  (composition-close . 0)
                  (module-close . 0)
                  (namespace-close . 0)
                  (extern-lang-close . 0)
                  (composition-open . 0)
                  (module-open . 0)
                  (namespace-open . 0)
                  (extern-lang-open . 0)
                  (objc-method-call-cont c-lineup-ObjC-method-call-colons c-lineup-ObjC-method-call +)
                  (objc-method-args-cont . c-lineup-ObjC-method-args)
                  (objc-method-intro . [0])
                  (friend . 0)
                  (cpp-define-intro c-lineup-cpp-define +)
                  (cpp-macro-cont . +)
                  (cpp-macro . [0])
                  (stream-op . c-lineup-streamop)
                  (arglist-cont-nonempty c-lineup-gcc-asm-reg c-lineup-arglist)
                  (arglist-cont c-lineup-gcc-asm-reg 0)
                  (comment-intro c-lineup-knr-region-comment c-lineup-comment)
                  (catch-clause . 0)
                  (else-clause . 0)
                  (do-while-closure . 0)
                  (substatement . +)
                  (statement-case-open . 0)
                  (statement-case-intro . +)
                  (statement-block-intro . +)
                  (statement . 0)
                  (brace-entry-open . 0)
                  (brace-list-entry . 0)
                  (brace-list-open . 0)
                  (block-close . 0)
                  (block-open . 0)
                  (inher-cont . c-lineup-multi-inher)
                  (inher-intro . +)
                  (member-init-cont . c-lineup-multi-inher)
                  (member-init-intro . +)
                  (annotation-var-cont . +)
                  (annotation-top-cont . 0)
                  (topmost-intro-cont . c-lineup-topmost-intro-cont)
                  (topmost-intro . -)
                  (knr-argdecl . 0)
                  (func-decl-cont . +)
                  (inline-close . 0)
                  (class-close . 0)
                  (class-open . 0)
                  (defun-block-intro . +)
                  (defun-close . 0)
                  (defun-open . 0)
                  (c . c-lineup-C-comments)
                  (string . c-lineup-dont-change)
                  (label . 0)
                  (inclass +cc-c++-lineup-inclass +)
                  (access-label . -)
                  (inlambda . 0)
                  (inline-open . 0)
                  (arglist-close +cc-lineup-arglist-close 0)
                  (arglist-intro . +)
                  (brace-list-close . -)
                  (brace-list-intro . 0)
                  (case-label . +)
                  (statement-cont . +)
                  (substatement-label . 0)
                  (substatement-open . 0)
                  (knr-argdecl-intro . 0))
                )
  )

;;; reference:
;;; https://emacs-china.org/t/emacs/19319/7
;;; and check c-fallback-style variable
