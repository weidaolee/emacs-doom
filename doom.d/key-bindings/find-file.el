;;; ../emacs/doomemacs/doom.d/key-bindings/find-file.el -*- lexical-binding: t; -*-

(map!
 ;;; Remap find file

 ;;; Dired
 (:when (modulep! :emacs dired)
  ;; global replace counsel-find-file (SPC .) with dired (C-x d)
  (:leader
   :desc "Find file by dired"
   :nvm "." #'+default/dired)

  ;; global replace counsel-find-file (C-x C-f) with dired (C-x d)
  (:desc "Find file by dired"
   :g "C-x C-f" #'+default/dired)

  (:map dired-mode-map
   ;; local replace counsel-find-file (C-x C-f) with find file under here (SPC f F)
   ;; when the buffer is dired-mode
   :desc "Find file under here"
   "C-x C-f" #'+default/find-file-under-here

   ;; local set key (C-c C-f) to bind dired-create-empty-file
   :desc "Create an empty file"
   "C-c C-f" #'dired-create-empty-file))


 (:when (modulep! :emacs dired +ranger)
  ;; :after ranger
  (:map ranger-mode-map
  ;; local replace counsel-find-file (C-x C-f) with find file under here (SPC f F)
  ;; when the buffer is dired-mode
  :desc "Find file under here"
  "C-x C-f" #'+default/find-file-under-here

  ;; local set key (C-c C-f) to bind dired-create-empty-file
  :desc "Create an empty file"
  "C-c C-f" #'dired-create-empty-file)))
