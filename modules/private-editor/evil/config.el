;;; private-edtior/evil/config.el -*- lexical-binding: t; -*-

;; redierct evil-insert-state to evil-emacs-state
(defalias 'evil-insert-state 'evil-emacs-state)

;; disable keys
(when (modulep! :editor evil +everywhere)
  (general-unbind '(normal)
    "r" "R" "y" "Y" "u" "o" "O" "p" "P" "="
    "a" "A" "d" "D" "J" "C-RET" "C-<return>"
    "x" "X" "c" "C" "m" "," "." "<" ">"))

(when (modulep! :editor evil +everywhere)
  (general-unbind '(motion)
    "B"))

(when (modulep! :editor evil +everywhere)
  (define-key! evil-snipe-mode-map
    "S" nil
    "F" nil
    "t" nil
    "T" nil))

(when (modulep! :editor evil +everywhere)
  (define-key! evil-snipe-local-mode-map
    "S" nil
    "F" nil
    "t" nil
    "T" nil))

(when (modulep! :editor evil +everywhere)
  (define-key! evil-motion-state-map
    [?\\] nil))

(when (modulep! :editor evil +everywhere)
  (define-key! evil-normal-state-map
    [backspace] #'evil-backward-word-begin
    [deletechar] #'protected-normal-state-mode
    [return] nil
    [tab] nil
    "TAB" nil))

(when (modulep! :editor evil +everywhere)
  (define-key! evil-motion-state-map
    "<" #'evil-jump-backward
    ">" #'evil-jump-forward))
