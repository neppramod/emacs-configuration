;; Create a variable to indicate where emacs's configuration is installed
(setq EMACS_DIR "~/.emacs.d/")

;; Avoid garbage collection at statup
(setq gc-cons-threshold most-positive-fixnum ; 2^61 bytes
      gc-cons-percentage 0.6)

;; All the settings and package installation is set in configuration.org
(org-babel-load-file "~/.emacs.d/configuration.org")

(add-hook 'emacs-startup-hook
  (lambda ()
    (setq gc-cons-threshold 1000000000 ; 1gb
          gc-cons-percentage 0.1)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#292D3E" "#ff5370" "#c3e88d" "#ffcb6b" "#82aaff" "#c792ea" "#89DDFF" "#EEFFFF"])
 '(custom-enabled-themes '(doom-acario-light))
 '(custom-safe-themes
   '("f2927d7d87e8207fa9a0a003c0f222d45c948845de162c885bf6ad2a255babfd" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default))
 '(fci-rule-color "#676E95")
 '(inhibit-startup-screen t)
 '(jdee-db-active-breakpoint-face-colors (cons "#1c1f2b" "#c792ea"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#1c1f2b" "#c3e88d"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#1c1f2b" "#676E95"))
 '(objed-cursor-color "#ff5370")
 '(org-agenda-files
   '("~/Dropbox/org/tasks.org" "~/Dropbox/org/journal.org" "~/Dropbox/org/inbox.org"))
 '(package-selected-packages
   '(darkroom pdf-tools emms smart-mode-line eyebrowse htmlize org-alert org-bullets magit lsp-java helm-lsp lsp-ui dap-mode flycheck yasnippet-snippets company quickrun which-key avy helm-swoop helm-descbinds helm projectile use-package-chords heaven-and-hell doom-themes exec-path-from-shell use-package))
 '(pdf-view-midnight-colors (cons "#EEFFFF" "#292D3E"))
 '(rustic-ansi-faces
   ["#292D3E" "#ff5370" "#c3e88d" "#ffcb6b" "#82aaff" "#c792ea" "#89DDFF" "#EEFFFF"])
 '(vc-annotate-background "#292D3E")
 '(vc-annotate-color-map
   (list
	(cons 20 "#c3e88d")
	(cons 40 "#d7de81")
	(cons 60 "#ebd476")
	(cons 80 "#ffcb6b")
	(cons 100 "#fcb66b")
	(cons 120 "#f9a16b")
	(cons 140 "#f78c6c")
	(cons 160 "#e78e96")
	(cons 180 "#d690c0")
	(cons 200 "#c792ea")
	(cons 220 "#d97dc1")
	(cons 240 "#ec6898")
	(cons 260 "#ff5370")
	(cons 280 "#d95979")
	(cons 300 "#b36082")
	(cons 320 "#8d678b")
	(cons 340 "#676E95")
	(cons 360 "#676E95")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
