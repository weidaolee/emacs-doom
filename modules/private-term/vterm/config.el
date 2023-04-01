;;; private-term/vterm/config.el -*- lexical-binding: t; -*-

(map!
 :after vterm
 :map vterm-mode-map
 :ei [backspace] #'vterm-send-backspace)
