;;; private-tools/log/config.el -*- lexical-binding: t; -*-

(use-package! logview
  :commands (logview-mode)
  :mode ("\\.log\\'" . logview-mode))
