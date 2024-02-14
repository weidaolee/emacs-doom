;;; private-emacs/dired/config.el -*- lexical-binding: t; -*-

(after! ranger
  (load! "+map/ranger.el"))

(after! ranger
  (defun ranger-to-dired(arg)
    (interactive "^p")
    (ranger-prev-file arg)))

(use-package! trashed
  :defer t
  :after dired)
