;;; private-completion/company/config.el -*- lexical-binding: t; -*-

(after! company
  (setq!
   company-tooltip-limit 16
   company-tooltip-maximum-width 64
   company-box-tooltip-maximum-width 32))

(map!
 :after company
 :map company-active-map
 [tab] #'company-complete-selection)
