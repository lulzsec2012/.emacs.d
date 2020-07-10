;;(setq emacs_config_version nil)
(setq emacs_config_version t)
(if emacs_config_version
    (progn
      (require 'package)
      (setq package-archives
            '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
              ("melpa" . "http://elpa.emacs-china.org/melpa/")
              ("org" . "http://elpa.emacs-china.org/org/")
              ("ublt" . "http://elpa.ubolonton.org/packages/")
              ))
      (package-initialize)

      ;; Ensure that use-package is installed.
      ;;
      ;; If use-package isn't already installed, it's extremely likely that this is a
      ;; fresh installation! So we'll want to update the package repository and
      ;; install use-package before loading the literate configuration.
      (when (not (package-installed-p 'use-package))
        (package-refresh-contents)
        (package-install 'use-package))

      (org-babel-load-file "~/.emacs.d/configuration.org")))

(load-file "~/.emacs.d/Emacs_ingenic/.emacs")
(put 'scroll-left 'disabled nil)
