(message "user Emacs directory: %s" user-emacs-directory)
(require 'cl)
;; ;;;<general>
(load (concat user-emacs-directory "user-config.el"))
;; ;;;</general>
;; ;;; <asl>
(setq asl-package-directory (concat user-emacs-directory "asl/"))
(add-to-list 'load-path asl-package-directory t)
(let ((asl-package-pattern (concat asl-package-directory  "asl_*.el")))
(cl-loop for package in (file-expand-wildcards asl-package-pattern) do (load package))
)
;; (require 'asl_)
;; (require 'asl_buff)
;; (require 'asl_dired)
;; (require 'asl_find)
;; (require 'asl_ln)
;; (require 'asl_pgrph)
;; (require 'asl_rect)
;; (require 'asl_rgn)
;; (require 'asl_bkm)
;; ;;<asl>
