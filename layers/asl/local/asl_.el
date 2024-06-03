;;; asl_.el --- -*- buffer-read-only: nil; -*-

;; Copyright 2024 Aroldo Souza-Leite
;; Author: asouzaleite@gmx.de
;; Version: 
;; Keywords: 
;; X-URL: not distributed yet

;; Basic asl Emacs keybindings.

;;; ;; <aliases> 
(defalias 'asl_/repeat-complex-command                    'repeat-complex-command
  "Bound to C-<f12> C-<f12>")
(defalias 'asl_/magit-status                              'magit-status
  "Jumps to the magit status window.")
(defalias 'asl_/yas-reload-all                            'yas-reload-all
  "Reloads all available snippets.
ATTENTION: it takes some seconds to complete.")
(defalias 'asl_/yas-insert-snippet                        'yas-insert-snippet)
(defalias 'asl_/quit-save                                 'save-buffers-kill-emacs
  "Asks if open buffers should be saved before  killing Emacs")
(defalias 'asl_/quit-not-save                             'kill-emacs
  "Kills Emacs without asking to save open buffers.")
(defalias 'asl_/server-force-delete                       'server-force-delete
  "Kills Emacs and kills the Emacs server.")
;;; ;; </aliases>

;;; ;; <keybindings>
(global-set-key (kbd "<f12>")                              nil)
(global-set-key (kbd "C-<f12> <f36>")                     'asl_/repeat-complex-command) ;; f36=C-<12>
(global-set-key (kbd "<f12> \#")                          'asl_/magit-status)
(global-set-key [(f12) (r)]                               'asl_/yas-reload-all)
(global-set-key [(f12) (insertchar)]                      'asl_/yas-insert-snippet)
(global-set-key (kbd "<f12> q")                            nil)
(global-set-key (kbd "<f12> q q")                         'asl_/quit-save)
(global-set-key (kbd "<f12> q Q")                         'asl_/quit-not-save)
(global-set-key (kbd "<f12> Q Q")                         'asl_/server-force-delete)
;;; ;; </keybindings>

;; ;;;
(provide 'asl_)
;; ;;;

