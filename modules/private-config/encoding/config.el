;;; private/encoding/config.el -*- lexical-binding: t; -*-

;; 设置为中文简体语言环境
;; (set-language-environment 'Chinese-GBK)
(set-language-environment 'utf-8)
(prefer-coding-system 'utf-8)

;; 设置emacs 使用 utf-8
(setq locale-coding-system 'utf-8)
;; 设置键盘输入时的字符编码
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
;; 文件默认保存为 utf-8
(set-buffer-file-coding-system 'utf-8)
(set-default buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
;; 解决粘贴中文出现乱码的问题
(set-clipboard-coding-system 'utf-8)
;; 终端中文乱码
(set-terminal-coding-system 'utf-8)
(modify-coding-system-alist 'process "*" 'utf-8)
(setq default-process-coding-system '(utf-8 . utf-8))
;; 解决文件目录的中文名乱码
(setq-default pathname-coding-system 'utf-8)
(set-file-name-coding-system 'utf-8)
;; 解决 Shell Mode(cmd) 下中文乱码问题
(defun change-shell-mode-coding ()
  (progn
    (set-terminal-coding-system 'utf-8)
    (set-keyboard-coding-system 'utf-8)
    (set-selection-coding-system 'utf-8)
    (set-buffer-file-coding-system 'utf-8)
    (set-file-name-coding-system 'utf-8)
    (modify-coding-system-alist 'process "*" 'utf-8)
    (set-buffer-process-coding-system 'utf-8 'utf-8)
    (set-file-name-coding-system 'utf-8)))

(add-hook 'shell-mode-hook 'change-shell-mode-coding)
(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
