;;;; **** my_last function ****
;;;; my_last function returns the last block
;;;; of a list which is equivalent of
;;;; (last list)
;;;; not working for 1 element list

(defun my_last (list) 
  (if (eq NIL (cdr (cdr list)))
     (cdr list)
    (my_last (cdr list))))
