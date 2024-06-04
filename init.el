(message "user Emacs directory: %s" user-emacs-directory)

;; ;;;<straight.el>
(load (concat user-emacs-directory "straight.el/" "bootstrap.el"))
;; ;;;</straight.el>

(load (concat user-emacs-directory "user-config.el"))
;; ;;;</general>


;; ;;; <layers>
(let*((layers-dir (concat user-emacs-directory "layers/"))
      (layers '("asl/"))
      )
  (cl-loop for layer in layers do
	   (progn (
		 load (concat layers-dir layer  "packages.el")))))
;; ;;; </layers>
