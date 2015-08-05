(provide 'private_config)
;chargement de theme
(load-theme 'grandshell t)


(require 'yasnippet)
(yas-global-mode 1)

(add-hook 'after-init-hook 'global-company-mode)
(projectile-global-mode)



(require 'golden-ratio)

(add-to-list 'golden-ratio-exclude-modes "ediff-mode")
(add-to-list 'golden-ratio-exclude-modes "helm-mode")
(add-to-list 'golden-ratio-exclude-modes "dired-mode")
(add-to-list 'golden-ratio-inhibit-functions 'pl/helm-alive-p)

(defun pl/helm-alive-p ()
  (if (boundp 'helm-alive-p)
      (symbol-value 'helm-alive-p)))

;; do not enable golden-raio in thses modes
(setq golden-ratio-exclude-modes '("ediff-mode"
                                   "gud-mode"
                                   "gdb-locals-mode"
                                   "gdb-registers-mode"
                                   "gdb-breakpoints-mode"
                                   "gdb-threads-mode"
                                   "gdb-frames-mode"
                                   "gdb-inferior-io-mode"
                                   "gud-mode"
                                   "gdb-inferior-io-mode"
                                   "gdb-disassembly-mode"
                                   "gdb-memory-mode"
                                   "magit-log-mode"
                                   "magit-reflog-mode"
                                   "magit-status-mode"
                                   "IELM"
                                   "eshell-mode" "dired-mode"))

(golden-ratio-mode)


(setq speedbar-supported-extension-expressions '(
  ".[ch]\\(\\+\\+\\|pp\\|c\\|h\\|xx\\)?"
  ".tex\\(i\\(nfo\\)?\\)?"
  ".todo"
  ".rb"
  ".txt"
  ".done"
  ".md"
  ".el"
  ".emacs"
  ".l"
  ".lsp"
  ".p"
  ".java"
  ".js"
  ".f\\(90\\|77\\|or\\)?"
  ".ad[abs]"
  ".p[lm]"
  ".tcl"
  ".m"
  ".scm"
  ".pm"
  ".py"
  ".g"
  "\\.\\(inc\\|php[s345]?\\|phtml\\)"
  ".s?html"
  ".ma?k"
  "[Mm]akefile\\(\\.in\\)?"))
(add-hook 'prog-mode-hook 'highlight-numbers-mode)
(require 'highlight-symbol)
(global-set-key [(control f3)] 'highlight-symbol)
(global-set-key [f3] 'highlight-symbol-next)
(global-set-key [(shift f3)] 'highlight-symbol-prev)
(global-set-key [(meta f3)] 'highlight-symbol-query-replace)
(define-globalized-minor-mode global-highlight-parentheses-mode
  highlight-parentheses-mode
  (lambda ()
    (highlight-parentheses-mode t)))
(global-highlight-parentheses-mode t)
