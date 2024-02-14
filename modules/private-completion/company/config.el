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

(use-package! company-spell
  :after company
  :config
  (setf company-spell-args "-a -S --guess --suggest --sug-mode=bad-spellers --size=90 soundslike "))

(after! text-mode
  (set-company-backend! 'text-mode
    '(:separate company-dabbrev company-yasnippet company-ispell :with company-spell)))
