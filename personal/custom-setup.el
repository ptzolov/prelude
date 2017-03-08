(require 'speedbar)
(require 'smartparens)
(require 'yasnippet)

(yas-global-mode +1)

(setq mac-command-modifier 'meta)

(setq cider-repl-history-size 10000)
(setq cider-repl-history-file "/Users/peyo.tzolov/.emacs.d/.repl-history")


;; indent whole file on save if we're in clojure-mode
(add-hook 'after-save-hook '(lambda () (interactive)
                              (when (derived-mode-p 'clojure-mode)
                                (indent-region 0 9999 nil))))


(add-hook 'haml-mode-hook
          (lambda ()
            (setq indent-tabs-mode nil)
            (define-key haml-mode-map "\C-m" 'newline-and-indent)))

;; ignore js compiled code from the searches
(setq ag-ignore-list '("./resources/public/*"
                       "./resources/public/js/out/*"
                       "./test/fixtures/*"))

(speedbar-add-supported-extension ".clj")

(add-to-list 'exec-path "/Users/peyo.tzolov/bin")

(blink-cursor-mode 1)

(setq cider-repl-print-length 100)

(add-hook 'org-shiftup-final-hook 'windmove-up)
(add-hook 'org-shiftleft-final-hook 'windmove-left)
(add-hook 'org-shiftdown-final-hook 'windmove-down)
(add-hook 'org-shiftright-final-hook 'windmove-right)
