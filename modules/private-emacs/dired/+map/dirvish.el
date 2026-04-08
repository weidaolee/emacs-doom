;;; private-emacs/dired/+map/dirvish.el -*- lexical-binding: t; -*-

(defvar +dirvish--paste-op nil
  "Pending paste operation: 'move or 'copy.")

(defvar +dirvish--paste-srcs nil
  "List of absolute paths captured by `+dirvish/cut' or `+dirvish/yank'.
Stored ourselves so navigating between dirvish buffers (which clears
dired marks) does not lose the source list before paste.")

(defun +dirvish/cut ()
  "Capture marked files for moving. Navigate to destination and press p."
  (interactive)
  (setq +dirvish--paste-op 'move
        +dirvish--paste-srcs (dired-get-marked-files))
  (message "Cut: %d file(s) marked for move"
           (length +dirvish--paste-srcs)))

(defun +dirvish/yank ()
  "Capture marked files for copying. Navigate to destination and press p."
  (interactive)
  (setq +dirvish--paste-op 'copy
        +dirvish--paste-srcs (dired-get-marked-files))
  (message "Yank: %d file(s) marked for copy"
           (length +dirvish--paste-srcs)))

(defun +dirvish/paste ()
  "Paste captured files. Move if cc was used, copy if yy was used."
  (interactive)
  (unless +dirvish--paste-srcs
    (user-error "Nothing to paste — use cc or yy first"))
  (let ((dirvish-yank-sources (lambda () +dirvish--paste-srcs)))
    (pcase +dirvish--paste-op
      ('move (dirvish-move))
      (_     (dirvish-yank))))
  (setq +dirvish--paste-op nil
        +dirvish--paste-srcs nil))

(map!
 :after dirvish
 :map dirvish-mode-map
 ;; cc = cut (mark for move), yy = yank (mark for copy), p/pp = paste
 :n "cc" #'+dirvish/cut
 :n "yy" #'+dirvish/yank
 :n "p"  #'+dirvish/paste
 ;; z* = ranger-style toggles. Binding any z* makes `z' a prefix, which
 ;; shadows Doom's single-key `z' -> `dirvish-history-jump'; rebind it on zj.
 :n "zh" #'dired-omit-mode
 :n "zj" #'dirvish-history-jump)
