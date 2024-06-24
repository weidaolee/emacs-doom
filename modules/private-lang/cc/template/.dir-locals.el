((c-mode . ((eval . (add-hook 'before-save-hook #'clang-format-buffer nil t))))
 (c++-mode . ((eval . (add-hook 'before-save-hook #'clang-format-buffer nil t)))))

;; ((c-mode . ((c-basic-offset . 4)
;;             (c-offsets-alist . ((access-label . -4)
;;                                 (inclass . +)
;;                                 (namespace-open . 0)
;;                                 (namespace-close . 0)
;;                                 (innamespace . 0)
;;                                 (case-label . 0)
;;                                 (statement-case-open . +)
;;                                 (statement-case-intro . +) ; for case labels
;;                                 (member-init-intro . ++))) ; for constructor initializer lists
;;             (c-hanging-braces-alist . ((substatement-open after)
;;                                        (brace-list-open)))))

;;  ((c++-mode . ((c-basic-offset . 4)
;;                (c-offsets-alist . ((access-label . -4)
;;                                    (inclass . +)
;;                                    (namespace-open . 0)
;;                                    (namespace-close . 0)
;;                                    (innamespace . 0)
;;                                    (case-label . 0)
;;                                    (statement-case-open . +)
;;                                    (statement-case-intro . +) ; for case labels
;;                                    (member-init-intro . ++))) ; for constructor initializer lists
;;                (c-hanging-braces-alist . ((substatement-open after)
;;                                           (brace-list-open)))))
