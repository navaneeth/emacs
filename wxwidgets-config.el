
;; include files for wxwidgets
;;(semantic-add-system-include "/home/nkn/wxWidgets-2.9.0/include" 'c++-mode)

;; preprocessor macro
(add-to-list 'semantic-lex-c-preprocessor-symbol-map '("WXDLLEXPORT" . ""))
(add-to-list 'semantic-lex-c-preprocessor-symbol-map '("WXDLLIMPEXP_CORE" . ""))
(add-to-list 'semantic-lex-c-preprocessor-symbol-map '("WXDLLIMPEXP_FWD_CORE" . ""))
(add-to-list 'semantic-lex-c-preprocessor-symbol-map '("WXDLLIMPEXP_BASE" . ""))
(add-to-list 'semantic-lex-c-preprocessor-symbol-map '("WXDLLIMPEXP_FWD_BASE" . ""))
(add-to-list 'semantic-lex-c-preprocessor-symbol-map '("WXDLLIMPEXP_FWD_XML" . ""))
(add-to-list 'semantic-lex-c-preprocessor-symbol-map '("WXDLLIMPEXP_ADV" . ""))


;; Imlicitly adding the header files to get completion working
;; Adding all include files in gtk directory
;;(DE-imply-includes-in-directory "/home/nkn/wxWidgets-2.9.0/include/wx")
;;(DE-imply-includes-in-directory "/home/nkn/wxWidgets-2.9.0/include/wx/gtk")
