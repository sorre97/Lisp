;;;; **** my_length ****
;;;; returns the number of elements inside a list (its length)
;;;; eg. my_length (1 2 3 4 5) -> 5

(defun my_length (list)
  (if (endp list)
      0
    (+ 1 (my_length (cdr list)))))

