;;; ../emacs/doomemacs/doom.d/key-bindings/ivy.el -*- lexical-binding: t; -*-

;; `+default/search-buffer' dispatches on the enabled completion module:
;; swiper-isearch under :completion ivy, consult-line under vertico.
(map! "C-s" #'+default/search-buffer)
