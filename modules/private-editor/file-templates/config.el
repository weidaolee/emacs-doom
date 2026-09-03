;;; private-editor/file-templates/config.el -*- lexical-binding: t; -*-

;; Overrides for a few of :editor file-templates' templates, which used to be
;; edits to modules/editor/file-templates/templates/ and conflicted on every
;; rebase onto upstream doom.
;;
;; `yas-reload-all' loads `yas-snippet-dirs' in reverse order, so the first
;; entry is loaded last and wins for snippets with the same file name (see
;; `yas--load-snippet-dirs' and `yas--load-pending-jits'). Prepending this
;; directory therefore shadows doom's template of the same name, and any
;; template not overridden here still comes from doom.

(defvar +private-file-templates-dir
  (expand-file-name "templates/" (dir!))
  "Directory of yasnippet folders overriding `+file-templates-dir'.")

(after! yasnippet
  (add-to-list 'yas-snippet-dirs '+private-file-templates-dir))
