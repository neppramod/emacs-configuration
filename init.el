;; Enable Repo
(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("elpa" . "https://elpa.gnu.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")))
(package-initialize)
(unless package-archive-contents (package-refresh-contents)) ;; Fetch
(setq package-list '(use-package))  ;; Install use-package
(dolist (package package-list)
  (unless (package-installed-p package) (package-install package)))

;; Looks
(use-package gruvbox-theme :ensure t
  :init (load-theme 'gruvbox-dark-hard t))

(add-to-list 'default-frame-alist '(font . "Hack-14"))
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(global-visual-line-mode 1)  ;; Soft wrap
(fset 'yes-or-no-p 'y-or-n-p)

;; Enable Recent files, at startup
(recentf-mode 1)
(setq recentf-max-saved-items 50)
(setq inhibit-startup-screen t)
(setq initial-scratch-message "")

;; Coding
(electric-pair-mode 1)
(show-paren-mode 1)
(setq show-paren-style 'parenthesis)

;; Delete to trash folder
(setq delete-by-moving-to-trash t)

;; Few Packages
;;

;; Read standard PATH
(use-package exec-path-from-shell
  :ensure t
  :init
  (exec-path-from-shell-initialize))

;; VTerm
(use-package vterm :ensure t)
(use-package vterm-toggle :ensure t)

(use-package company
  :ensure t
  :init
  (add-hook 'after-init-hook 'global-company-mode))

;; Eglot (LSP)
(use-package eglot
  :ensure t)

;; Quickrun
(use-package quickrun :ensure t)

;; YaSnippet
(use-package yasnippet :ensure t :config (yas-global-mode 1))
(use-package yasnippet-snippets :ensure t)

(defvar company-mode/enable-yas t
  "Enable yasnippet for all backends.")

(defun company-mode/backend-with-yas (backend)
  (if (or (not company-mode/enable-yas) (and (listp backend) (member 'company-yasnippet backend)))
      backend
    (append (if (consp backend) backend (list backend))
            '(:with company-yasnippet))))

(setq company-backends (mapcar #'company-mode/backend-with-yas company-backends))

;; Helm
(use-package helm
  :ensure t
  :init
  (helm-mode 1)
  (progn (setq helm-buffers-fuzzy-matching t)))

;; Which Key
(use-package which-key
  :ensure t
  :init
  (which-key-mode))

;; Custom Functions
(defun my/quickrun()
  (interactive)
  (save-buffer)
  (quickrun))

;; Copy current line
(defun my/copy-line()
  (interactive)
  (save-excursion
    (back-to-indentation)
    (kill-ring-save
     (point)
     (line-end-position)
     )
    )
  )


(use-package org-modern :ensure t)
(use-package org-preview-html :ensure t)



(use-package avy :ensure t)

(use-package key-chord
  :ensure t
  :config
  (key-chord-mode 1)
  (setq key-chord-one-key-delay 0.50 ; same key (e.g. xx)
      key-chord-two-keys-delay 0.325)
  )

(add-hook 'org-mode-hook #'org-modern-mode)
(add-hook 'org-agenda-finalize-hook #'org-modern-agenda)

;; Keys

(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "M-0") 'delete-window)
(global-set-key (kbd "M-1") 'delete-other-windows)
(global-set-key (kbd "C-x C-b") 'helm-buffers-list)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-c e") 'eglot)
(global-set-key (kbd "C-c r") 'my/quickrun)
(global-set-key (kbd "C-c f") 'helm-recentf)
(global-set-key (kbd "C-c s") 'yas-insert-snippet)

(key-chord-define-global "gc" 'avy-goto-char-2)
(key-chord-define-global "gw" 'avy-goto-word-1)
(key-chord-define-global "gl" 'avy-goto-line)
(key-chord-define-global "gk" 'kill-visual-line)
(key-chord-define-global "gs" 'isearch-forward)
(key-chord-define-global "gg" 'keyboard-escape-quit)
(key-chord-define-global "gu" 'undo)
(key-chord-define-global "yy" 'my/copy-line)
(key-chord-define-global "pp" 'yank)
(key-chord-define-global "[[" 'keyboard-escape-quit)

(key-chord-define-global " b" 'helm-buffers-list)
(key-chord-define-global " f" 'helm-find-files)
(key-chord-define-global " r" 'helm-multi-files)
(key-chord-define-global " s" 'save-buffer)
(key-chord-define-global " t" 'vterm-toggle)
(key-chord-define-global " x" 'helm-M-x)
(key-chord-define-global " k" 'kill-current-buffer)
(key-chord-define-global " 0" 'delete-window)
(key-chord-define-global " 1" 'delete-other-windows)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(vterm-toggle company-postframe yasnippet-snippets which-key vterm use-package quickrun org-preview-html org-modern helm gruvbox-theme exec-path-from-shell eglot company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
