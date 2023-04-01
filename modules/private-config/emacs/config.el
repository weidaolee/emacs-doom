;;; private/emacs/config.el -*- lexical-binding: t; -*-

;; frame
(toggle-frame-maximized)
(toggle-frame-fullscreen)

;; display time, battery
(display-time-mode t)
(display-battery-mode t)

;; display column number
(column-number-mode t)

;; allow expert features
(put 'narrow-to-region 'disabled nil)
(put 'set-goal-column 'disabled nil)

;; disable <C-m>
(define-key input-decode-map [?\C-m] [C-m])
(global-set-key (kbd "<C-m>") #'c-m)

;; disable M-<tab>
(map! "M-<tab>" #'doom/escape)
