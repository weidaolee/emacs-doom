;;; private-lang/config.el -*- lexical-binding: t; -*-

;;; Clang
(after! lsp-clangd
  (setq lsp-clients-clangd-args
        '("-j=8"
          "--pretty"
          "--background-index"
          "--clang-tidy"
          ;; "--clang-tidy-checks=*"
          "--completion-style=bundled" ;; "--header-insertion=never"
          ;; "--header-insertion=implicit"
          ;; "--header-insertion-decorators=0"
          "--all-scopes-completion"
          "--log=verbose"
          "--print-options"
          "--query-driver"
          "--background-index-rebuild"
          ;; "--header-insertion-decorators=1"
          ;; "--suggest-missing-includes=1"

          ))
  (set-lsp-priority! 'clangd 2))

;; (after! ccls
;;   (setq ccls-initialization-options '(:index (:comments 2 :thread 8) :completion (:detailedLabel t)))
;;   (setq lsp-ui-doc-enable nil)
;;   (set-lsp-priority! 'ccls 2)) ; optional as ccls is the default in Doom


;;; CC Style
(after! (:or c-mode c++-mode)
  (c-add-style "default-cc-style"
               '("k&r"
                 (indent-tabs-mode . nil)
                 (c-basic-offset . 4)
                 (c-offsets-alist
                  (innamespace . -)
                  (access-label . -))))
  (add-to-list 'c-default-style '(c++-mode . "default-cc-style"))
  (add-to-list 'c-default-style '(c-mode . "default-cc-style")))

(c-add-style "default-cc-style"
             '("k&r"
               (indent-tabs-mode . nil)
               (c-basic-offset . 4)
               (c-offsets-alist
                (innamespace . -)
                (access-label . -)
                (inline-open . 0))))
(add-to-list 'c-default-style '(c++-mode . "default-cc-style"))
(add-to-list 'c-default-style '(c-mode . "default-cc-style"))
;;; reference:
;;; https://emacs-china.org/t/emacs/19319/7
;;; and check c-fallback-style variable

;; (add-hook! '(c-mode-hook c++-mode-hook) #'format-all-mode)
