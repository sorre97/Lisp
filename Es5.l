;;;; **** my_reverse ****
;;;; this function reverse a list
;;;; eg. reverse (1 2 3 4 5) -> (5 4 3 2 1)

(defun my_reverse (list) 
  (cond
   ((endp list) (error "Empty list"))
   ((eq (length list) 1) list)
   (T (append (my_reverse (rest list)) (list(first list))))))

