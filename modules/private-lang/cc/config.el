;;; private-lang/config.el -*- lexical-binding: t; -*-

;;; Clang
(after! lsp-clangd
  (setq lsp-clients-clangd-args
        '("-j=3"
          "--background-index"
          "--clang-tidy"
          "--completion-style=detailed"
          "--header-insertion=never"
          "--header-insertion-decorators=0"))
  (set-lsp-priority! 'clangd 2))

;;; CC Style
(c-add-style "default-cc-style"
             '("k&r"
               (indent-tabs-mode . nil)
               (c-basic-offset . 4)
               (c-offsets-alist
                (innamespace . -)
                (access-label . -))))


(add-to-list 'c-default-style '(c++-mode . "default-cc-style"))
(add-to-list 'c-default-style '(c-mode . "default-cc-style"))


;;; reference:
;;; https://emacs-china.org/t/emacs/19319/7
;;; and check c-fallback-style variable

(add-hook! '(c-mode-hook c++-mode-hook) #'format-all-mode)

(defun set-c-basic-offset()
  (setq c-basic-offset 4))
(add-hook! '(c-mode-hook c++-mode-hook
             c-mode-local-vars-hook
             c++-mode-local-vars-hook) #'set-c-basic-offset)
