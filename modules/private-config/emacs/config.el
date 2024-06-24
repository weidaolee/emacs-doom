;;; private/emacs/config.el -*- lexical-binding: t; -*-

;; frame
(toggle-frame-maximized)
;(toggle-frame-fullscreen)
(which-function-mode t)

;; display time, battery
(display-time-mode t)
(display-battery-mode t)

;; display column number
(column-number-mode t)

;; allow expert features
(put 'narrow-to-region 'disabled nil)
(put 'set-goal-column 'disabled nil)
