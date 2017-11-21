;;; Package --- Summary

;;; Commentary:
;; The main entry point into BMACS. It either loads the pre-compiled BMACS configuration file
;; or tangles and loades the BMACS literate org configuration file.

;;; Code:

;; Let's start emacs up quietly.
(advice-add #'display-startup-echo-area-message :override #'ignore)
(setq inhibit-startup-message t
      inhibit-startup-echo-area-message user-login-name
      inhibit-default-init t
      initial-major-mode 'fundamental-mode
      initial-scratch-message nil
      mode-line-format nil)


(let ((file-name-handler-alist nil))
  (if (file-exists-p (expand-file-name "bmacs.elc" user-emacs-directory))
      (load-file (expand-file-name "bmacs.elc" user-emacs-directory))
    (require 'org)
    (org-babel-load-file (expand-file-name "bmacs.org" user-emacs-directory))))



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(safe-local-variable-values
   (quote
    ((web-mode-attr-indent-offset . 4)
     (web-mode-code-indent-offset . 4)
     (web-mode-css-indent-offset . 4)
     (web-mode-markup-indent-offset . 4)
     (css-indent-offset . 4)
     (js3-indent-level . 4)
     (js4-basic-offset . 4)
     (js-indent-level . 4)
     (evil-shift-width . 4)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background "#000000"))))
 '(diff-hl-change ((t (:foreground "#ECBE7B"))))
 '(evil-goggles-delete-face ((t (:foreground "#ff6c6b"))))
 '(evil-goggles-paste-face ((t (:foreground "#98be65"))))
 '(evil-goggles-undo-redo-add-face ((t (:foreground "#98be65"))))
 '(evil-goggles-undo-redo-change-face ((t (:foreground "#51afef"))))
 '(evil-goggles-undo-redo-remove-face ((t (:foreground "#ff6c6b"))))
 '(evil-goggles-yank-face ((t (:foreground "#51afef"))))
 '(git-gutter+-modified ((t (:foreground "#ECBE7B"))))
 '(git-gutter-fr:modified ((t (:foreground "#ECBE7B"))))
 '(git-gutter:modified ((t (:foreground "#ECBE7B"))))
 '(org-level-1 ((t :foreground "#51afef" :inherit nil :height 1.2)))
 '(org-level-2 ((t :foreground "#DCAEEA" :inherit nil :height 1.1)))
 '(org-level-3 ((t :foreground "#a9a1e1" :inherit nil :height 1.1)))
 '(org-level-4 ((t :foreground "#ECBE7B" :inherit nil :height 1.1)))
 '(org-level-5 ((t :foreground "#46D9FF" :inherit nil :height 1.1)))
 '(smerge-refined-added ((t (:inherit (quote smerge-other)))))
 '(smerge-refined-removed ((t (:inherit (quote smerge-mine))))))
;;; init.el ends here
