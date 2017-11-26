;;;; **** pick ****
;;;; pick returns the N element of a list (0 indexed)
;;;; eg. pick 2 (1 2 3 4 5 ) -> 3

(defun pick (list n) 
  (cond 
   ((or 
     (< n 0) 
     (> n (- (length list) 1))) (error "Index out of bound"))
   ((= n 0) (car list))
   (T (pick (cdr list) (- n 1)))))