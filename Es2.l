;;;; **** my_last_but_one function ****
;;;; my_last function returns the last_but_one block
;;;; eg. my_last_but_one (1 2 3 4 5 ) -> (4 5)

(defun my_last_but_one (l)
  (cond 
   ((endp l) (error "Empty List") )
   ((endp (cdr l)) (error "List too short"))
   ((eq (cdr (cdr l)) NIL) l)
   (T (my_last_but_one (cdr l)))))