;;; private-ui/tabs/config.el -*- lexical-binding: t; -*-


(setq!
 centaur-tabs-height 32
 centaur-tabs-style "rounded"
 centaur-tabs-plain-icons t
 centaur-tabs-label-fixed-length 8
 centaur-tabs-close-button "x")

(setq! x-underline-at-descent-line t)

(after! centaur-tabs
  (centaur-tabs-group-by-projectile-project)
  (add-hook! '(dired-mode-hook
               calendar-mode-hook)
             #'centaur-tabs-local-mode))


(setq!
 centaur-tabs-adjust-buffer-order t
 centaur-tabs-adjust-buffer-order 'left)



(map!
 :desc "Centaur tabs forward tab"
 :g "C-x <right>" #'centaur-tabs-forward-tab

 :desc "Centaur tabs backward tab"
 :g "C-x <left>" #'centaur-tabs-backward-tab

 :desc "Centaur tabs forward group"
 :g "C-x <down>" #'centaur-tabs-forward-group)

(map!
 :desc "Centaur tabs counsel switch group"
 :g "C-x <up>" #'centaur-tabs-counsel-switch-group)
