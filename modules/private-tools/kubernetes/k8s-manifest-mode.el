;;; k8s-manifest-mode.el --- Description -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2024 Weidao Lee
;;
;; Author: Weidao Lee <weidaolee@gmail.com>
;; Maintainer: Weidao Lee <weidaolee@gmail.com>
;; Created: JUL 03, 2024
;; Modified: JUL 03, 2024
;; Version: 0.0.1
;; Keywords: abbrev bib c calendar comm convenience data docs emulations extensions faces files frames games hardware help hypermedia i18n internal languages lisp local maint mail matching mouse multimedia news outlines processes terminals tex tools unix vc wp
;; Homepage: https://github.com/weidaolee/k8s-manifest-mode
;; Package-Requires: ((emacs "24.3"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  Description
;;
;;; Code:


(require 'yaml-mode)

(define-derived-mode k8s-manifest-mode yaml-mode "K8s Manifest"
  "Major mode for editing Kubernetes manifest files."
  ;; Add additional setup here if needed
  )

(provide 'k8s-manifest-mode)
;;; k8s-manifest-mode.el ends here
