;;; ../emacs/doomemacs/doom.d/key-bindings/roam.el -*- lexical-binding: t; -*-

(map! (:when (modulep! :editor evil +everywhere)
       :map  general-override-mode-map
       :nv "C-n" #'evil-next-line
       :nv "C-p" #'evil-previous-line
       :nv "C-f" #'evil-forward-char
       :nv "C-b" #'evil-backward-char)

      (:map global-map
       "M-n" #'forward-paragraph
       "M-p" #'backward-paragraph)

      ;;<home>
      (:map (global-map evil-motion-state-map)
       :desc "backward-to-bol-or-indent"
       "<home>" #'doom/backward-to-bol-or-indent
       "<end>" #'doom/forward-to-last-non-comment-or-eol)

      (:map evil-normal-state-map
       "a" #'doom/backward-to-bol-or-indent
       "A" #'beginning-of-buffer

       "e" #'doom/forward-to-last-non-comment-or-eol
       "E" #'end-of-buffer

       "U" #'evil-scroll-line-up
       "D" #'evil-scroll-line-down
       )

      (:when (modulep! :editor evil +everywhere)
       :map evil-normal-state-map
       :prefix ("C-c c" . "Evil scroll and paste")

       (:desc "evil-scroll-page-down"
        "f" #'evil-scroll-page-down)

       (:desc "evil-scroll-page-up"
        "b" #'evil-scroll-page-up)

       (:desc "evil-paste-pop-next"
        "n" #'evil-paste-pop-next)

       (:desc "evil-paste-pop"
        "p" #'evil-paste-pop))

      (:when (modulep! :editor evil +everywhere)
       :map evil-motion-state-map
       "C-e" nil
       "n" #'evil-ex-search-next
       "p" #'evil-ex-search-previous
       ;; "N" #'evil-ex-search-next
       ;; "P" #'evil-ex-search-previous
       ))

;; ranger
(map!
 :after (dired ranger)
 :map ranger-mode-map
 "C-n" #'ranger-next-file
 "C-p" #'ranger-prev-file)
