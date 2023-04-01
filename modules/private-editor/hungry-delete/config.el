;;; private-editor/hungry-delete/config.el -*- lexical-binding: t; -*-

;; smart-hungry-delete
(load! "smart-hungry-delete/smart-hungry-delete.el")

(use-package! smart-hungry-delete
  ;; :defer t
  ;; :load-path "smart-hungry-delete/smart-hungry-delete.el"
  :init
  (map!
   :when (modulep! :editor evil +everywhere)
   :ei "<backspace>"    #'smart-hungry-delete-backward-char
   :ei "C-d"            #'hungry-delete-forward)
  ;; :defer nil ;; dont defer so we can add our functions to hooks
  (smart-hungry-delete-add-default-hooks))

;; hungry-delete
(use-package! hungry-delete
  :defer t
  :init
  (turn-on-hungry-delete-mode)

  (map!
   :when (modulep! :editor evil +everywhere)
   :map hungry-delete-mode-map
   :ei [remap delete-backward-char]             #'smart-hungry-delete-backward-char
   :ei [remap backward-delete-char-untabify]    #'smart-hungry-delete-backward-char
   :ei [remap c-electric-backspace]             #'smart-hungry-delete-backward-char
   :ei [remap c-electric-delete-forward]        #'smart-hungry-delete-forward-char)
  (setq hungry-delete-join-reluctantly t))
