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
(load-theme 'leuven 1)
(add-to-list 'default-frame-alist '(font . "Hack-16"))
(tool-bar-mode -1)
(global-visual-line-mode 1)  ;; Soft wrap

;; Enable Recent files
(recentf-mode 1)
(setq recentf-max-saved-items 50)

;; Coding
(electric-pair-mode 1)
(show-paren-mode 1)
(setq show-paren-style 'mixed)


;; Few Packages
;;

;; Read standard PATH
(use-package exec-path-from-shell
  :ensure t
  :init
  (exec-path-from-shell-initialize))

;; Company Mode (Complete Anything)
(use-package company
  :ensure t
  :init
  (add-hook 'after-init-hook 'global-company-mode))

;; Eglot (LSP)
(use-package eglot
  :ensure t)

;; Quickrun
(use-package quickrun :ensure t)

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

;; Keys
(global-set-key (kbd "C-c f") 'helm-multi-files)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x C-b") 'helm-buffers-list)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "C-c r") 'myquickrun)
(global-set-key (kbd "M-0") 'delete-window)
(global-set-key (kbd "M-1") 'delete-other-windows)
(global-set-key (kbd "C-c e") 'eglot)



