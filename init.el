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

(add-to-list 'default-frame-alist '(font . "Hack-12"))
(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-visual-line-mode 1)  ;; Soft wrap

;; nasm disable indentation
(electric-indent-local-mode -1)

;; Enable Recent files, at startup
(recentf-mode 1)
(setq recentf-max-saved-items 50)
(setq inhibit-startup-screen t)
(add-hook 'after-init-hook 'recentf-open-files)

;; Coding
(electric-pair-mode 1)
(show-paren-mode 1)
(setq show-paren-style 'mixed)

;; Delete to trash folder
(setq delete-by-moving-to-trash t)

;; Few Packages
;;

;; Dired Sidebar
(use-package dired-sidebar
  :bind (("C-x C-n" . dired-sidebar-toggle-sidebar))
  :ensure t
  :commands (dired-sidebar-toggle-sidebar)
  :init
  (add-hook 'dired-sidebar-mode-hook
            (lambda ()
              (unless (file-remote-p default-directory)
                (auto-revert-mode))))
  :config
  (push 'toggle-window-split dired-sidebar-toggle-hidden-commands)
  (push 'rotate-windows dired-sidebar-toggle-hidden-commands)

  ;(setq dired-sidebar-subtree-line-prefix "__")
  (setq dired-sidebar-theme 'vscode)
  (setq dired-sidebar-use-term-integration t)
  (setq dired-sidebar-use-custom-font t)
  (setq dired-sidebar-width 20)
  (setq dired-sidebar-window-fixed -1)
  )

(use-package vscode-icon
  :ensure t
  :commands (vscode-icon-for-file))

;; Read standard PATH
(use-package exec-path-from-shell
  :ensure t
  :init
  (exec-path-from-shell-initialize))

;; VTerm
(use-package vterm :ensure t)

;; Company Mode (Complete Anything)
(use-package company
  :ensure t
  :init
  (add-hook 'after-init-hook 'global-company-mode))



;; Quickrun
(use-package quickrun :ensure t)

;; YaSnippet
(use-package yasnippet :ensure t :config (yas-global-mode 1))
(use-package yasnippet-snippets :ensure t)

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
(defun myquickrun()
  (interactive)
  (save-buffer)
  (quickrun))

(use-package org-modern :ensure t)
(use-package org-preview-html :ensure t)

(add-hook 'org-mode-hook #'org-modern-mode)
(add-hook 'org-agenda-finalize-hook #'org-modern-agenda)

;; Keys
(global-set-key (kbd "C-c f") 'recentf-open-files)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x C-b") 'helm-buffers-list)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "C-c r") 'myquickrun)
(global-set-key (kbd "M-0") 'delete-window)
(global-set-key (kbd "M-1") 'delete-other-windows)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(vscode-icon treemacs org-preview-html org-modern which-key helm yasnippet-snippets yasnippet quickrun company vterm exec-path-from-shell use-package))
 '(warning-suppress-log-types '((comp) (comp) (comp)))
 '(warning-suppress-types '((comp) (comp))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
