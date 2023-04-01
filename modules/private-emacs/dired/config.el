;;; private-emacs/dired/config.el -*- lexical-binding: t; -*-

(use-package! trashed
  :defer t
  :after dired)

(after! dired
  (load! "+map/ranger.el"))
