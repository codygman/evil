(find-file "evil-common.el")
(goto-char (point-max))
(call-interactively 'evil-scroll-up)

;; start emacs with C-u scroll/want integration settings like I had
;; make emacs-repro
;; open bind-then-scroll-up-batch.el
;; split windows
;; run each line with eval-expression
;; no issue

;; try running the batch mode added to the makefile

;; make emacs-repro-batch
;; emacs -Q -L . -L lib -l goto-chg.el -l evil-tests.el \
;; --eval "(setq evil-want-integration t evil-want-keybinding nil evil-want-C-u-scroll t)" \
;; --eval "(evil-mode 1)" \
;; -batch -l bind-then-scroll-up-batch.el
;; Wrong type argument: fixnump, nil
;; make: *** [Makefile:80: emacs-repro-batch] Error 255

;; it does only happen in batch mode
