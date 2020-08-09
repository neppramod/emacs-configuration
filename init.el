;; All the settings and package installation is set in configuration.org
(org-babel-load-file "~/.emacs.d/configuration.org")

;; Before loading following file (custom.org), make sure you have configured custom.org first
(org-babel-load-file "~/.emacs.d/custom.org")

;; Anything below this is auto generated
;; Don't edit this
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "red3" "ForestGreen" "yellow3" "blue" "magenta3" "DeepSkyBlue" "gray50"])
 '(custom-enabled-themes nil)
 '(package-selected-packages
   (quote
    (which-key key-chord counsel swiper avy org-bullets muban))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
