;;; refresh.el --- Update archives  -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(let* ((file "archive-contents")
       (dir (concat ".eask/" emacs-version "/elpa/archives/"))
       (archives (directory-files dir nil "^\\([^.]\\|\\.[^.]\\|\\.\\..\\)")))
  (dolist (archive archives)
    (make-directory (expand-file-name archive) t)
    (copy-file (expand-file-name (concat archive "/" file) dir)
               (expand-file-name "./" archive) t)))

;; Local Variables:
;; coding: utf-8
;; no-byte-compile: t
;; End:
;;; refresh.el ends here
