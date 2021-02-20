;; Create a variable to indicate where emacs's configuration is installed
(setq EMACS_DIR "~/.emacs.d/")

;; Avoid garbage collection at statup
(setq gc-cons-threshold most-positive-fixnum ; 2^61 bytes
      gc-cons-percentage 0.6)

;; All the settings and package installation is set in configuration.org
(org-babel-load-file (concat EMACS_DIR "configuration.org"))

(add-hook 'emacs-startup-hook
  (lambda ()
    (setq gc-cons-threshold 100000000   ; 100mb
          gc-cons-percentage 0.1)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#282c34" "#ff6c6b" "#98be65" "#ECBE7B" "#51afef" "#c678dd" "#46D9FF" "#bbc2cf"])
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(compilation-message-face 'default)
 '(custom-enabled-themes '(night-owl))
 '(custom-safe-themes
   '("c5692610c00c749e3cbcea09d61f3ed5dac7a01e0a340f0ec07f35061a716436" "e6df46d5085fde0ad56a46ef69ebb388193080cc9819e2d6024c9c6e27388ba9" "f99318b4b4d8267a3ee447539ba18380ad788c22d0173fc0986a9b71fd866100" "77113617a0642d74767295c4408e17da3bfd9aa80aaa2b4eeb34680f6172d71a" "99ea831ca79a916f1bd789de366b639d09811501e8c092c85b2cb7d697777f93" default))
 '(fci-rule-color "#5B6268")
 '(highlight-changes-colors '("#EF5350" "#7E57C2"))
 '(highlight-tail-colors
   '(("#010F1D" . 0)
	 ("#B44322" . 20)
	 ("#34A18C" . 30)
	 ("#3172FC" . 50)
	 ("#B49C34" . 60)
	 ("#B44322" . 70)
	 ("#8C46BC" . 85)
	 ("#010F1D" . 100)))
 '(hl-sexp-background-color "#efebe9")
 '(jdee-db-active-breakpoint-face-colors (cons "#1B2229" "#51afef"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#1B2229" "#98be65"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#1B2229" "#3f444a"))
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
   '("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3"))
 '(objed-cursor-color "#ff6c6b")
 '(org-agenda-files
   '("~/Documents/org/programming-books.org" "/Users/pramod/Library/Mobile Documents/iCloud~com~appsonthemove~beorg/Documents/org/tasks.org" "/Users/pramod/Library/Mobile Documents/iCloud~com~appsonthemove~beorg/Documents/org/books.org" "/Users/pramod/Library/Mobile Documents/iCloud~com~appsonthemove~beorg/Documents/org/journal.org"))
 '(package-selected-packages
   '(vterm exec-path-from-shell pandoc ox-pandoc org-alert lsp-java lsp-mode javadoc-lookup w3m which-key helm avy use-package-chords quickrun heaven-and-hell night-owl-theme leuven-theme frog-jump-buffer iflipb flycheck yasnippet-snippets company doom-themes use-package))
 '(pdf-view-midnight-colors (cons "#bbc2cf" "#282c34"))
 '(pos-tip-background-color "#FFF9DC")
 '(pos-tip-foreground-color "#011627")
 '(quickrun-timeout-seconds 7)
 '(rustic-ansi-faces
   ["#282c34" "#ff6c6b" "#98be65" "#ECBE7B" "#51afef" "#c678dd" "#46D9FF" "#bbc2cf"])
 '(vc-annotate-background "#282c34")
 '(vc-annotate-color-map
   (list
	(cons 20 "#98be65")
	(cons 40 "#b4be6c")
	(cons 60 "#d0be73")
	(cons 80 "#ECBE7B")
	(cons 100 "#e6ab6a")
	(cons 120 "#e09859")
	(cons 140 "#da8548")
	(cons 160 "#d38079")
	(cons 180 "#cc7cab")
	(cons 200 "#c678dd")
	(cons 220 "#d974b7")
	(cons 240 "#ec7091")
	(cons 260 "#ff6c6b")
	(cons 280 "#cf6162")
	(cons 300 "#9f585a")
	(cons 320 "#6f4e52")
	(cons 340 "#5B6268")
	(cons 360 "#5B6268")))
 '(vc-annotate-very-old-color nil)
 '(w3m-command "/usr/local/bin/w3m")
 '(weechat-color-list
   '(unspecified "#011627" "#010F1D" "#DC2E29" "#EF5350" "#D76443" "#F78C6C" "#D8C15E" "#FFEB95" "#5B8FFF" "#82AAFF" "#AB69D7" "#C792EA" "#AFEFE2" "#7FDBCA" "#D6DEEB" "#FFFFFF")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
