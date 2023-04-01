;;; private-edtior/default/config.el -*- lexical-binding: t; -*-

(normal-erase-is-backspace-mode t)
(delete-selection-mode t)

(map!
 :map global-map
  "C-k" nil
  "C-j" nil
  "C-t" nil)

(use-package! smart-tab
  :when (modulep! :editor evil +everywhere)
  :defer t
  :config
  (add-hook! 'evil-emacs-state-entry-hook #'smart-tab-mode-on)
  (add-hook! 'evil-emacs-state-exit-hook #'smart-tab-mode-off))

(use-package! smart-newline
  :defer nil
  :config
  (add-hook! 'java-mode-local-vars-hook (smart-newline-mode 0)) ; +1 -> 0
  (add-hook! 'python-mode-local-vars-hook (smart-newline-mode 0)))
