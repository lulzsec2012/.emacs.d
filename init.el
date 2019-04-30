;;(setq emacs_config_version nil)
(setq emacs_config_version t)
(if emacs_config_version
    (progn
      (require 'package)
      (add-to-list 'package-archives
                   '("melpa" . "https://melpa.org/packages/") t)
      (package-initialize)
      
      ;; here to ensure that the correct version of =org= is used to render my
      ;; =configuration.org= file.
      (eval-when-compile
        (require 'use-package))     
      (org-babel-load-file "~/.emacs.d/configuration.org")
      )
  )
(load-file "~/.emacs.d/Emacs_ingenic/.emacs")     
  

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(comint-completion-autolist nil)
 '(comint-completion-fignore (quote ("~" "#" "%" ".o")))
 '(comint-input-ignoredups (quote t))
 '(comint-input-ring-size 500)
 '(custom-safe-themes
   (quote
    ("bf390ecb203806cbe351b966a88fc3036f3ff68cd2547db6ee3676e87327b311" default)))
 '(font-lock-maximum-size
   (quote
    ((c-mode . 256000)
     (c++-mode . 256000)
     (verilog-mode . 1024000))))
 '(history-length 500)
 '(line-number-display-limit 500000)
 '(next-line-add-newlines nil)
 '(package-selected-packages
   (quote
    (ivy-rich ace-window ace-pinyin expand-region multiple-cursors engine-mode wrap-region smex ido-vertical-mode flx-ido ido-completing-read+ helpful dired-open org-ref company-auctex auctex org-pomodoro org-bullets multi-term realgud imenu-list protobuf-mode ggtags rspec-mode rainbow-mode web-mode matlab-mode company-jedi py-autopep8 elpy magit rainbow-delimiters paredit haskell-mode scss-mode company-coq smartparens company-c-headers company-irony company-rtags flycheck-ycmd company-ycmd ycmd diff-hl diminish unicode-fonts powerline nord-theme projectile auto-compile auto-package-update use-package)))
 '(realgud-populate-common-fn-keys-function (quote realgud-populate-common-fn-keys-none))
 '(scroll-bar-mode (quote right))
 '(shell-completion-fignore (quote ("~" "#" "%" ".o"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(isearch ((t (:background "brightcyan" :foreground "black"))))
 '(ivy-minibuffer-match-face-1 ((t (:background "green" :foreground "black"))))
 '(ivy-minibuffer-match-face-2 ((t (:background "yellow" :foreground "black" :weight bold))))
 '(ivy-minibuffer-match-face-3 ((t (:background "cyan" :foreground "black" :weight bold))))
 '(ivy-minibuffer-match-face-4 ((t (:background "#ffbbff" :foreground "black" :weight bold))))
 '(ivy-remote ((t (:foreground "color-202")))))
