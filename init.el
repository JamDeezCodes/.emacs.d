(setq custom-file "~/.emacs.d/.emacs.custom.el")

(add-to-list 'default-frame-alist '(font . "Fira Mono-20"))
(add-to-list 'default-frame-alist '(fullscreen . maximized))

(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(global-display-line-numbers-mode -1)

;; Set up package.el to work with MELPA
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)

;; Download Evil
(unless (package-installed-p 'evil)
  (package-install 'evil))

;; Enable Evil
(require 'evil)
(evil-mode 1)
(evil-set-undo-system 'undo-redo)

;; Load Everforest
(add-to-list 'custom-theme-load-path "~/.emacs.d/everforest-theme")
(load-theme 'everforest-hard-dark t)

;; Use vterm
(use-package vterm
    :ensure t)

(load-file custom-file)
