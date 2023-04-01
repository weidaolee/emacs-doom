;;; private-emacs/dired/autoload/+ranger.el -*- lexical-binding: t; -*-
;;;###if (featurep! +ranger)

;;;###autoload
(defcustom ranger-key [?\C-q]
  "Key in `dired-mode' used to toggle `ranger-mode'."
  :group 'ranger
  :type 'sexp)
