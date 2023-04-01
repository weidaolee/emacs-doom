;;;; private-edtior/drag-stuff/autoload.el -*- lexical-binding: t; -*-

;;;###autoload
(defun drag-shift-text (distance)
  (if (use-region-p)
      (let ((mark (mark)))
        (save-excursion
          (indent-rigidly (region-beginning)
                          (region-end)
                          distance)
          (push-mark mark t t)
          (setq deactivate-mark nil)))
    (indent-rigidly (line-beginning-position)
                    (line-end-position)
                    distance)))

;;;###autoload
(defun drag-shift-left (count)
  (interactive "p")
  (drag-shift-text (- (* count standard-indent))))

;;;###autoload
(defun drag-shift-right (count)
  (interactive "p")
  (drag-shift-text (* count standard-indent)))

;;;###autoload
(defun lisp-drag-shift-left (count)
  (interactive "p")
  (drag-shift-text (- (* count 2))))

;;;###autoload
(defun lisp-drag-shift-right (count)
  (interactive "p")
  (drag-shift-text (* count 2)))

;;;###autoload
(defun c-like-drag-shift-left (count)
  (interactive "p")
  (drag-shift-text (- (* count c-basic-offset))))

;;;###autoload
(defun c-like-drag-shift-right (count)
  (interactive "p")
  (drag-shift-text (* count c-basic-offset)))

;;;###autoload
(defun org-drag-shift-left (count)
  (interactive "p")
  (drag-shift-text (- (* count 1))))

;;;###autoload
(defun org-drag-shift-right (count)
  (interactive "p")
  (drag-shift-text (* count 1)))
