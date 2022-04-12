;;; _prepare.el --- Prepration  -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require 'package)
(require 'thingatpt)
(require 'json)
(require 'subr-x)

;;
;;; Util

(defun file-to-string (file)
  "File to string function."
  (with-temp-buffer (insert-file-contents file) (buffer-string)))

;; Local Variables:
;; coding: utf-8
;; no-byte-compile: t
;; End:
;;; _prepare.el ends here
