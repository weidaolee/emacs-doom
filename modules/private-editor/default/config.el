;;; private-edtior/default/config.el -*- lexical-binding: t; -*-

(if (not (display-graphic-p))
    (normal-erase-is-backspace-mode 0)
  (normal-erase-is-backspace-mode 1))

(delete-selection-mode t)

;; disable <C-m>
(if (display-graphic-p)
    ;; Running in a windowed environment
    (progn
      ;; Define the keybinding for graphical mode
      (define-key input-decode-map [?\C-m] [C-m])
      (global-set-key (kbd "<C-m>") #'c-m))
  ;; Running in a terminal
  ;; Define alternative keybindings or leave it unbound
  ;; (for example, to avoid conflicts, you can use a different keybinding)
  )

;; disable M-<tab>
(map! "M-<tab>" #'doom/escape)


(map!
 :map global-map
 "C-k" nil
 "C-j" nil
 "C-t" nil
 "C-<return>" nil
 "C-RET" nil)

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

(setq! doom-big-font-increment 2)
