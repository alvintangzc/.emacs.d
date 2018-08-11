(use-package evil
  :ensure t
  ;;If you diminish undo-tree mode, then you diminish evil-mode
  ;; I see the evil thing in the mode line on an org buffer, BUT not in an emacs lisp buffer
  :diminish undo-tree-mode
  :init
  (progn
    (evil-mode t))
  :config
  (progn
    (use-package evil-leader
      :ensure t
      :init
      (progn
        (global-evil-leader-mode)
        (setq evil-leader/in-all-states 1)
        (evil-leader/set-leader "\\")
        (evil-leader/set-key "ff" 'counsel-fzf)
        (evil-leader/set-key "w" 'save-buffer)
        (evil-leader/set-key "sb" 'ido-switch-buffer)
        (evil-leader/set-key "kb" 'ido-kill-buffer)))
    (use-package evil-surround
      :ensure t
      :init
      (global-evil-surround-mode 1))))

(provide 'init-evil)
;;; init-evil.el ends here
