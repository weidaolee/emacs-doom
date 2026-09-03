;;; private-input/chinese/config.el -*- lexical-binding: t; -*-

(after! fcitx
  (setq fcitx-active-evil-states '(insert emacs))
  (setq fcitx-use-dbus nil)
  (setq fcitx-remote-command (or (executable-find "fcitx5-remote")
                                 (executable-find "fcitx-remote")))
  (fcitx-aggressive-setup))
