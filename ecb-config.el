
;; Configuration settings for Emacs Code Browser
(add-to-list 'load-path  "/home/nkn/emacs/ecb-2.40")
(require 'ecb)
(require 'ecb-autoloads)

;; Disable annoying tip of the day
(setq ecb-tip-of-the-day nil)

;; Activating ECB
(ecb-activate)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.40"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )