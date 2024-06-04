(require 'straight)
(straight-use-package 'f)
(require 'f)
(require 'cl-lib)

;; ;;; <layers>
(let*((layers-dir (f-join user-emacs-directory "layers"))
      (layers '("asl"))
      )
  (cl-loop for layer in layers do
	   (progn (
		 load (f-join layers-dir layer  "packages.el")))))
;; ;;; </layers>
