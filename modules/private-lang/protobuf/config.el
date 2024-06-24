;;; private-lang/protobuf/config.el -*- lexical-binding: t; -*-

(use-package! protobuf-mode
  :mode "\\.proto\\'"
  :defer t)

(use-package! company-protobuf
  :when (modulep! :completion company)
  :after protobuf-mode
  :config (set-company-backend! 'protobuf-mode 'company-protobuf))
