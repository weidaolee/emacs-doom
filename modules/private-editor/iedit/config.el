;;; private-edtior/iedit/config.el -*- lexical-binding: t; -*-

(use-package! iedit
  :when (and (featurep! :editor multiple-cursors) (featurep! :completion vertico))
  :defer t
  :init
  :defines desktop-minor-mode-table
  :init

  (map!
   ;; :ei "C-;" #'iedit-mode
   :ei "C-x r RET" #'iedit-rectangle-mode
   ;; (:map isearch-mode-map
   ;;  "C-;" #'iedit-mode-from-isearch)
   (:map esc-map
    "C-;" #'iedit-execute-last-modification)
   (:map help-map
    "C-;" #'iedit-mode-toggle-on-function))
  :config
  ;; Avoid restoring `iedit-mode'
  (with-eval-after-load 'desktop
    (add-to-list 'desktop-minor-mode-table
                 '(iedit-mode nil))))
