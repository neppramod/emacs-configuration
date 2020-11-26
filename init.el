;; Create a variable to indicate where emacs's configuration is installed
(setq EMACS_DIR "~/.emacs.d/")

;; Avoid garbage collection at statup
(setq gc-cons-threshold most-positive-fixnum ; 2^61 bytes
      gc-cons-percentage 0.6)

;; All the settings and package installation is set in configuration.org
(org-babel-load-file "~/.emacs.d/configuration.org")

(add-hook 'emacs-startup-hook
  (lambda ()
    (setq gc-cons-threshold 100000000   ; 100mb
          gc-cons-percentage 0.1)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(doom-one))
 '(custom-safe-themes
   '("2f1518e906a8b60fac943d02ad415f1d8b3933a5a7f75e307e6e9a26ef5bf570" "99ea831ca79a916f1bd789de366b639d09811501e8c092c85b2cb7d697777f93" default))
 '(helm-completion-style 'emacs)
 '(org-agenda-files
   '("~/Desktop/todo.org" "~/Dropbox/org/tasks.org" "~/Dropbox/org/journal.org" "~/Dropbox/org/inbox.org"))
 '(package-selected-packages
   '(night-owl-theme javadoc-lookup evil sqlite3 org-roam-server org-roam org-sidebar treemacs-all-the-icons all-the-icons-dired dired-single ag ripgrep yasnippet-snippets which-key use-package-chords smart-mode-line quickrun projectile pdf-tools org-bullets org-alert magit lsp-ui lsp-java htmlize helm-swoop helm-lsp helm-descbinds heaven-and-hell general flycheck eyebrowse exec-path-from-shell emms doom-themes darkroom company all-the-icons)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
