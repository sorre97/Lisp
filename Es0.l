;;;; **** my_append ****
;;;; this function appends two lists together
;;;; eg. my_append (1 2 3) (4 5) -> (1 2 3 4 5)

(defun my_append (list1 list2) 
  (if (null list1)
      list2
   (cons (car list1) (my_append (rest list1) list2))))