
;; Provides a set of functions that can be useful in C++ programming
;; Author : Navaneeth.K.N


;; inserts the header guard
(defun insert-include-guard ( )
(interactive)
(let ((name (buffer-file-name))))
(let ((suffix)))
(if (buffer-file-name)
    (setq name buffer-file-name)
  (setq name "unnamed"))
(setq name "_H_INCLUDED_")
(setq name (upcase name))
(setq name (file-name-nondirectory name))
(setq name (file-name-sans-extension name))
(goto-char (point-min))
(insert "#ifndef _" name "" suffix)
(insert "\n#define _" name "" suffix)
(goto-char (point-max))
(insert "\n\n#endif //" name "" suffix))

;; Key binding for header guard
(global-set-key [f12] 'insert-include-guard)