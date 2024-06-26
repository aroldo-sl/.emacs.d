;;; -*-  lexical-binding: t; buffer-read-only: t; -*-
;; ;; should be loaded after 'early-init.el'
(require 'straight)
(straight-use-package 'f)
(require 'f)
(require 'cl-lib)

;; ;;; <user-config>
(setq user-config-file (f-join user-emacs-directory "user-config.el"))
(load user-config-file)
;; ;;; </user-config>

;; ;;; <layers>
(let*((layers-dir (f-join user-emacs-directory "layers"))
      (layers '("asl"))
      )
  (cl-loop for layer in layers do
	   (progn (
		 load (f-join layers-dir layer  "packages.el")))))
;; ;;; </layers>

