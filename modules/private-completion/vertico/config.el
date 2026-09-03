;;; private-completion/vertico/config.el -*- lexical-binding: t; -*-

;; Sorting only. Filtering stays with orderless, which :completion vertico
;; already sets up (including doom's own style dispatchers) -- letting
;; prescient take over filtering as well would throw that away. Flip
;; `vertico-prescient-enable-filtering' if you want prescient's matching too.

(use-package! vertico-prescient
  :when (modulep! :completion vertico)
  :after vertico
  :init
  (setq vertico-prescient-enable-filtering nil
        vertico-prescient-enable-sorting t
        prescient-save-file (file-name-concat doom-profile-cache-dir "prescient-save.el"))
  :config
  (vertico-prescient-mode +1)
  ;; persist the frecency data across sessions
  (prescient-persist-mode +1))


;; swiper handed its query back to evil on exit (`swiper--remember-search-history'),
;; which is why n/N kept walking the matches after RET. consult-line does no such
;; thing, so evil's search state stays empty and n/N have nothing to repeat.
;;
;; Components are joined with ".*", the way ivy's `ivy--regex-plus' built its
;; regexp, so a two-word query still repeats as one search.

(defadvice! +vertico--consult-line-remember-search-a (&rest _)
  "Feed the last `consult-line' input into evil's search state."
  :after #'consult-line
  (when (and (bound-and-true-p evil-mode)
             (eq evil-search-module 'evil-search)
             consult--line-history)
    (let ((re (string-join (split-string (car consult--line-history)) ".*")))
      (unless (string-empty-p re)
        (add-to-history 'evil-ex-search-history re)
        (setq evil-ex-search-pattern (evil-ex-make-search-pattern re)
              evil-ex-search-direction 'forward)
        (when evil-ex-search-persistent-highlight
          (evil-ex-search-activate-highlight evil-ex-search-pattern))))))
