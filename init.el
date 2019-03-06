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
  
