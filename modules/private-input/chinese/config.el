;;; private-input/chinese/config.el -*- lexical-binding: t; -*-

(after! fcitx
  (setq fcitx-active-evil-states '(insert emacs))
  (fcitx-aggressive-setup)
  (setq fcitx-use-dbus t))
