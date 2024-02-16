;;; private-ui/theme/config.el -*- lexical-binding: t; -*-


;; Banner
(setq org-directory "~/emacs/doomemacs/doom.d/org/")
(setq +doom-dashboard-banner-dir "~/emacs/doomemacs/doom.d/banners/")
(setq +doom-dashboard-banner-file "./gnuemacs-300.png")

;; theme
(use-package! doom-themes
  :init
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t
        doom-themes-padded-modeline t)

  (load-theme 'doom-one t)

  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
  ;; Enable custom neotree theme (all-the-icons must be installed!)
  ;; (doom-themes-neotree-config)
  ;; or for treemacs users
  ;; (setq doom-themes-treemacs-theme "doom-atom") ; use "doom-colors" for less minimal icon theme
  (doom-themes-treemacs-config)
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))
