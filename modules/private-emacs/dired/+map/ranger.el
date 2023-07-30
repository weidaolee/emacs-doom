;;; private-emacs/dired/+map/ranger.el -*- lexical-binding: t; -*-

;; (define-key ranger-mode-map [remap mkdir] #'dired-create-directory)
(map!
 :after ranger
 :map ranger-normal-mode-map
 "+" #'dired-create-directory)

(map!
 :when (modulep! :editor evil +everywhere)
 ;; NOTE C-q -> ranger back to dired
 ;; define at emacs/dired/autoload/+ranger.el

 ;;; disable ranger
 (:after ranger
  :map ranger-normal-mode-map

  "B" nil

  "dd" nil
  "da" nil
  "du" nil

  "um" nil
  "uq" nil
  "uv" nil

  "m" nil
  "t" nil
  "'" nil

  ";d" nil
  ";u" nil
  ";x" nil)

 ;;; cut something
 (:after ranger
  :map ranger-normal-mode-map
  (:desc "ranger-cut" ; dd
   "cc" #'ranger-cut)
  (:desc "ranger-cut-append" ; da
   "ca" #'ranger-cut-append))

 ;;; mark/unmark somthing
 (:after dired
  :map dired-mode-map
  (:desc "dired-toggle-marks"
   :n "T" #'dired-toggle-marks))

 (:after ranger
  :map ranger-normal-mode-map
  (:desc "dired-mark"
   "m" #'dired-mark)
  (:desc "dired-unmark"
   "u" #'dired-unmark)
  (:desc "dired-toggle-marks"
   "T" #'dired-toggle-marks))

 ;;; bookmark
 (:after ranger
  :map ranger-normal-mode-map
  (:desc "ranger-create-mark" ; m
   "bc" #'ranger-create-mark)
  (:desc "dired-unmark" ; '
   "bg" #'ranger-goto-mark))

 ;;; show something
 (:after ranger
  :map ranger-normal-mode-map

  (:desc "ranger-show-size" ; du
   "ss" #'ranger-show-size)

  (:desc "ranger-show-bookmarks" ; B
   "sb" #'ranger-show-bookmarks))

 ;;; delete and trash
 (:after dired
  :map dired-mode-map
  :n "d" #'dired-flag-file-deletion
  :n "t" #'dired-flag-file-to-trash-can
  :n "x" #'dired-do-flagged-delete-or-trash
  )

 (:after ranger
  :map ranger-normal-mode-map
  "d" #'dired-flag-file-deletion
  "t" #'dired-flag-file-to-trash-can
  "x" #'dired-do-flagged-delete-or-trash))
