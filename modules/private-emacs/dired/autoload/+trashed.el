;;; private-emacs/dired/autoload/+trashed.el -*- lexical-binding: t; -*-

;;;###autoload
(defun dired-flag-file-to-trash-can(arg &optional interactive)
  (interactive (list current-prefix-arg t))
  (setq delete-by-moving-to-trash t)
  (dired-flag-file-deletion arg interactive))

;;;###autoload
(defun dired-do-flagged-delete-or-trash(&optional nomessage)
  (interactive)
  (dired-do-flagged-delete nomessage)
  (setq delete-by-moving-to-trash nil))
