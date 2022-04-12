;;; refresh.el --- Update archives  -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(defun shell-execute (cmd &rest args)
  "Return non-nil if CMD executed succesfully with ARGS."
  (= 0 (shell-command (concat cmd " "
                              (mapconcat #'shell-quote-argument args " ")))))

(shell-execute
 "mv"
 (expand-file-name (concat ".eask/" emacs-version "/elpa/archives/"))
 (expand-file-name "./"))

;; Local Variables:
;; coding: utf-8
;; no-byte-compile: t
;; End:
;;; refresh.el ends here
