(use-package! drag-stuff
  :when (featurep! :editor evil +everywhere)
  :defer t
  :init
  (map!
   :ei "<M-up>"    #'drag-stuff-up
   :ei "<M-down>"  #'drag-stuff-down
   :ei "<M-left>"  #'drag-shift-left
   :ei "<M-right>" #'drag-shift-right)

  (map!
   :map emacs-lisp-mode-map
   :ei "<M-left>"  #'lisp-drag-shift-left
   :ei "<M-right>" #'lisp-drag-shift-right)

  (map!
   :map (c-mode-map c++-mode-map glsl-mode-map java-mode-map javascript-mode-map rust-mode-map)
   :ei "<M-left>"  #'c-like-drag-shift-left
   :ei "<M-right>" #'c-like-drag-shift-right)

  (map!
   :map org-mode-map
   :ei "<M-left>"  #'org-drag-shift-left
   :ei "<M-right>" #'org-drag-shift-right))
