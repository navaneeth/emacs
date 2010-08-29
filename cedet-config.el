
;; Handles the CEDET configuration
(load-file "~/open_source/cedet/common/cedet.el")

(semantic-load-enable-excessive-code-helpers)


(require 'semantic-ia)
(require 'semantic-gcc)

;; custom key bindings for smart completion
(global-set-key "\C-x\C-m" 'semantic-ia-complete-symbol-menu)

;; For parsing system include files as semantic-gcc not working for me!
(semantic-add-system-include "/usr/include/c++/4.3" 'c++-mode)


;; Loading EDE package
(require 'ede)
(global-ede-mode t)

;; Function to load all include files in the specified directory
(defun DE-imply-includes-in-directory (dir)
  "Add all header files in DIR to `semanticdb-implied-include-tags'."
  (let ((files (directory-files dir t "^.+\\.h[hp]*$" t)))
    (defvar-mode-local c++-mode semanticdb-implied-include-tags
      (mapcar (lambda (header)
                (semantic-tag-new-include
                 header
                 nil
                 :filename header))
              files))))

