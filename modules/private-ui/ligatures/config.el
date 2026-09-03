;;; private-ui/ligatures/config.el -*- lexical-binding: t; -*-

;; `+ligatures-extra-symbols' maps keywords to glyphs that replace literal
;; keywords in code (`true' -> 𝕋, `int' -> ℤ, `return' -> ⟼ ...). Most of them
;; are harder to read than the word they hide, so keep only the handful that
;; are unambiguous.
;;
;; This used to be a patch on modules/ui/ligatures/config.el, which conflicted
;; on every rebase onto upstream doom. Trimming the plist here instead works
;; because :private-ui loads after :ui ligatures (which defines the plist), and
;; every `set-ligatures!' call reads it later still -- those live inside the
;; `after!' / `:config' blocks of the :lang modules, i.e. after their package
;; loads.

(defvar +ligatures-excluded-symbols
  '(:composition :map
    :true :false :int :float :str :bool :list
    :not :and :or :return :yield
    :union :intersect :diff :tuple :pipe)
  "Keys dropped from `+ligatures-extra-symbols'.

What survives: the org ones (:name :src_block :src_block_end :quote :quote_end),
:lambda :def :null :in :not-in :for :some :dot.")

(when (and (modulep! :ui ligatures +extra)
           (boundp '+ligatures-extra-symbols))
  (setq +ligatures-extra-symbols
        (cl-loop for (key char) on +ligatures-extra-symbols by #'cddr
                 unless (memq key +ligatures-excluded-symbols)
                 nconc (list key char))))
