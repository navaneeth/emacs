


(defun insert-header-guard ( )   
"Inserts a header guard" 
  (interactive) 
  (save-excursion     
      (goto-char (point-min)) 
      (insert "\n#ifndef " (upcase                           
                           (file-name-sans-extension buffer-file-name))
              "_H_INCLUDED")
(insert "\n#define " (upcase                           
                           (file-name-sans-extension buffer-file-name))
              "_H_INCLUDED\n")
(goto-char (point-max)) 
(insert "\n#endif\n")))

(defun insert-copyright-text ( )
"Inserts a copyright text"
(interactive)
(insert "/* <file-name>
 *
 * Copyright (C) <year> <author>
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.

 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.

 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA */\n\n"))


