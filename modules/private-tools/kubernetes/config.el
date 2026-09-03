;;; private-tools/kubernetes/config.el -*- lexical-binding: t; -*-


(use-package! kubel
  :after vterm
  :config
  (kubel-vterm-setup))


(after! kubel
  (map!
   :map kubel-mode-map
   :n "n" #'kubel-set-namespace
   :n "d" #'kubel-get-resource-details
   :n "l" #'kubel-log-popup
   :n "x" #'kubel-exec-pod-by-shell-command
   :n "X" #'kubel-exec-vterm-pod
   :n "?" #'kubel-help-popup))

(use-package! kubedoc)

(load! "k8s-manifest-mode.el")

(use-package! k8s-manifest-mode
  :mode "Procfile\\'"
  :init
  (when (modulep! +lsp)
    (add-hook 'yaml-mode-local-vars-hook #'lsp! 'append))
  (when (modulep! +tree-sitter)
    (add-hook 'yaml-mode-local-vars-hook #'tree-sitter! 'append))
  :config
  (setq-hook! 'yaml-mode-hook tab-width yaml-indent-offset))
