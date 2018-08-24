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
        (evil-leader/set-leader "<SPC>")
        (evil-leader/set-key "ff" 'projectile-find-file)
        (evil-leader/set-key "fz" 'counsel-fzf)
        (evil-leader/set-key "ag" 'counsel-ag)
        (evil-leader/set-key "w"  'save-buffer)
        (evil-leader/set-key "sb" 'ido-switch-buffer)
        (evil-leader/set-key "ss" 'avy-goto-char)
        ;; (evil-leader/set-key "jd" 'lsp-ui-peek-find-definitions)
        (evil-leader/set-key "fr" 'xref-find-references)
        (evil-leader/set-key "fr" 'lsp-ui-peek-find-references)
        (evil-leader/set-key "kb" 'ido-kill-buffer)
        ;; highlight
        (evil-leader/set-key "mk" 'symbol-overlay-put)
        (evil-leader/set-key "mn" 'symbol-overlay-jump-next)
        (evil-leader/set-key "nm" 'symbol-overlay-jump-prev)
        (evil-leader/set-key "mc" 'symbol-overlay-remove-all)
        ;; highlight end
        (evil-leader/set-key "sw" 'ace-swap-window)
        (evil-leader/set-key "fl" 'counsel-imenu)
        (evil-leader/set-key "ma" 'highlight-symbol-at-point)))
    (use-package evil-surround
      :ensure t
      :init
      (global-evil-surround-mode 1))
    (use-package evil-mc
      :ensure t
      :init
      (global-evil-mc-mode 1))
    (use-package evil-escape
      :ensure t
      :init
      (progn
        (evil-escape-mode 1))
      :config
      (progn
        (setq-default evil-escape-delay 0.3)
        (setq-default evil-escape-key-sequence "kj")))))

(with-eval-after-load 'evil
    (defalias #'forward-evil-word #'forward-evil-symbol))

(provide 'init-evil)
;;; init-evil.el ends here
