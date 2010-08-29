
;; Disabling unnecessary startup buffers
(setq inhibit-startup-echo-area-message t)
(setq inhibit-startup-message t)

;; concrete packages
(load-file "~/emacs/cedet-config.el")
(load-file "~/emacs/auto-inserts.el")
(load-file "~/emacs/color-theme-config.el")
;;(load-file "~/emacs/custom/ecb-config.el")
(load-file "~/emacs/helpers.el")

; Loading the haskell mode.
(load "~/emacs/haskell-mode/haskell-site-file.el")
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 ;;'(ecb-options-version "2.40")
 '(semantic-c-dependency-system-include-path (quote ("/home/nkn/wxWidgets-2.9.0/include" "/usr/include"))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )


;; Loading wxwidgets settings
;;(load-file "~/emacs/custom/wxwidgets-config.el")

;; Loading boost settings
;;(load-file "~/emacs/custom/boost-config.el")

;; Tabs into spaces
(setq-default indent-tabs-mode nil)

;; Setting the indent style
(setq c-default-style "stroustrup")

;; I don't need menu, scroll and tool bar
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
