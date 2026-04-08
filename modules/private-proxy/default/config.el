;;; private-proxy/default/config.el -*- lexical-binding: t; -*-

;; Route Emacs HTTP/HTTPS traffic through a local proxy (e.g. Clash on
;; 127.0.0.1:7890). Enable/disable by toggling the `default' line under
;; `:private-proxy' in `doom.d/init.el'.
;;
;; Note: this proxy MITM-rewrites HTTPS, which can corrupt binary downloads
;; (e.g. straight.el package tarballs, emojify image set). If a package fails
;; to fetch with a hash mismatch, disable this module, run `doom sync', then
;; re-enable.

(setq url-proxy-services
      '(("http"  . "127.0.0.1:7890")
        ("https" . "127.0.0.1:7890")))
