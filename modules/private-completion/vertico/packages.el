;;; -*- no-byte-compile: t; -*-
;;; private-completion/vertico/packages.el

;; Frecency sorting, the one thing lost in the move off :completion ivy
;; +prescient. Pulls in prescient as a dependency.
(package! vertico-prescient)
