;;; packages.el --- asl ayer packages file for .emacs.d  -*- buffer-read-only: nil; -*-
;;
;; Author: Aroldo Souza-Leite asouzaleite@gmx.de
;; Loads asl modules (packagers)


(let* (
       ;; <asl>
       (this-layer (concat user-emacs-directory "layers/" "asl/"))
       ;; </asl>
       (package-directory (concat  this-layer "local/"))
       (package-pattern (concat package-directory  "*.el"))
       (package-list (file-expand-wildcards package-pattern))
       )
  (add-to-list 'load-path package-directory t)
  (cl-loop for package in package-list do (load package))
)



;;; packages.el ends here
