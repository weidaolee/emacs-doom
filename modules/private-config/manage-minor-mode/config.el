;;; private-config/manage-minor-mode/config.el -*- lexical-binding: t; -*-

(use-package! manage-minor-mode
  :defer t
  :config
  (map!
   :after manage-minor-mode
   :map   manage-minor-mode-map
   :desc  "Kill buffer and its window on quitting"
   :n     "q" #'kill-buffer-and-window))
