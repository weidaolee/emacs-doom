;;; private-emacs/dired/config.el -*- lexical-binding: t; -*-

(after! dirvish
  (load! "+map/dirvish.el"))

(after! dired-x
  (setq dired-omit-files (concat dired-omit-files "\\|^\\..+")))

(use-package! trashed
  :defer t
  :after dired)
