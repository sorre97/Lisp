; **** flatten  ****
;;;; this function flats a list
;;;; eg. flatten (1 (2 3) 4) -> (1 2 3 4)

(defun flatten (list) 
  (cond 
   ((null list) list)    ;lista null
   ((listp (first list)) (append (flatten (first list)) (flatten (rest list)))) ;elemento lista innestata
   (T (append (list (first list)) (flatten (rest list))))))  ;elemento semplice