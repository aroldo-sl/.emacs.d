;;; -*-  lexical-binding: t; buffer-read-only: t; -*-
;; ;;; <early-init>
(setq package-enabel-at-startup nil)
(setq custom-file (concat user-emacs-directory "custom.el"))
;; ;;; </early-init>

;; ;; <straight> ;;
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name
        "straight/repos/straight.el/bootstrap.el"
        (or (bound-and-true-p straight-base-dir)
            user-emacs-directory)))
      (bootstrap-version 7))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))
;; ;;; </straight>
