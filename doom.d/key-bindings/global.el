;;; ../emacs/doomemacs/doom.d/key-bindings/global.el -*- lexical-binding: t; -*-

;; ;; h
;; (map!
;;  :when (modulep! :editor evil +everywhere)
;;  :map general-override-mode-map
;;  :nvm "h" help-map
;;  )

;; G
(map!
 :when (modulep! :editor evil +everywhere)
 ;; :map (evil-normal-state-map evil-motion-state-map)
 :map general-override-mode-map
 :nvm "G" #'+lookup/online-select
 )

;; q Q
(map!
 :when (modulep! :editor evil +everywhere)
 :nvm "q" #'kill-current-buffer
 :nvm "Q" #'evil-record-macro

 (:map occur-mode-map
  :nvm "q" #'+popup/quit-window))
