;;; -*- buffer-read-only: nil; -*-

;; Copyright 2024 Aroldo Souza-Leite
;;
;; Author: asouzaleite@gmx.de
;; Version: 
;; Keywords: 
;; X-URL: not distributed yet

;; Bookmark utili.


;; ;;; <bookmark-aliases>
(defalias 'asl/bkm-set 'bookmark-set
  "Sets a bookmark.")
(defalias 'asl/bkm-list 'bookmark-bmenu-list)
(defalias 'asl/bkm-jump 'bookmark-jump)
;; ;;; </bookmark-aliases>

;; ;;; <bookmark-keys>
(define-prefix-command 'asl/bkm-)
(global-set-key [(f6)] 'asl/bkm-)
(let ((bindings '(
                  (asl/bkm-set               [(f6) (13)]) ;; 13=RET
                  (asl/bkm-jump              [(f6) (f5)])
                  (asl/bkm-jump              [(f6) (j)])
                  (asl/bkm-list              [(f6) (l)])
                  )))
  (cl-loop for (fn key) in bindings do (progn
                                         (global-set-key key fn))))
;; ;;; </bookmark-keys>

;; ;;;
(provide 'asl_bkm)
;; ;;;
;; ;;; asl_bkm.el ends here
