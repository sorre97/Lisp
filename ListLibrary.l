;;;; List Library made with Lisp

;;;; Test lists definition

; General case
(defparameter l (list 1 2 3 4 5))

; Nested case
(defparameter ln (list 1 (list 2) 3 (list (list 4 5) 6 (list 7 8 (list 9 10)))))

;Limit cases
  ; empty list
(defparameter le (list NIL))
  ; single element list
(defparameter l1 (list 1))
  ; two element list
(defparameter l2 (list 1 2))
 
 ; palindrome list
(defparameter lp (list 'x 'a 'n 'a 'x))

; **** my_last function ****
;;;; my_last function returns the last block
;;;; of a list which is equivalent of
;;;; (last list)
;;;; not working for 1 element list

(defun my_last (list) 
  (if (eq NIL (cdr (cdr list)))
     (cdr list)
    (my_last (cdr list))))

; **** my_last_but_one function ****
;;;; my_last function returns the last_but_one block
;;;; eg. my_last_but_one (1 2 3 4 5 ) -> (4 5)

(defun my_last_but_one (l)
  (cond 
   ((endp l) (error "Empty List") )
   ((endp (cdr l)) (error "List too short"))
   ((eq (cdr (cdr l)) NIL) l)
   (T (my_last_but_one (cdr l)))))

; **** my_length ****
;;;; returns the number of elements inside a list (its length)
;;;; eg. my_length (1 2 3 4 5) -> 5

(defun my_length (list)
  (if (endp list)
      0
    (+ 1 (my_length (cdr list)))))


; **** pick ****
;;;; pick returns the N element of a list (0 indexed)
;;;; eg. pick 2 (1 2 3 4 5 ) -> 3

(defun pick (list n) 
  (cond 
   ((or 
     (< n 0) 
     (> n (- (my_length list) 1))) (error "Index out of bound"))
   ((= n 0) (car list))
   (T (pick (cdr list) (- n 1)))))

; **** my_append ****
;;;; this function appends two lists together
;;;; eg. my_append (1 2 3) (4 5) -> (1 2 3 4 5)

(defun my_append (list1 list2) 
  (if (null list1)
      list2
   (cons (car list1) (my_append (rest list1) list2))))

; **** my_reverse ****
;;;; this function reverse a list
;;;; eg. reverse (1 2 3 4 5) -> (5 4 3 2 1)

(defun my_reverse (list) 
  (cond
   ((endp list) (error "Empty list"))
   ((eq (my_length list) 1) list)
   (T (my_append (my_reverse (rest list)) (list(first list))))))


; **** memy_reverse ****
;;;; this function tells if a list is palindrome or not
;;;; eg. palindromee (x a n a x) -> T


(defun palindrome (list) 
  (equal list (my_reverse list)))

; **** flatten  ****
;;;; this function flats a list
;;;; eg. flatten (1 (2 3) 4) -> (1 2 3 4)

(defun flatten (list) 
  (cond 
   ((null list) list)    ;null list
   ((listp (first list)) (my_append (flatten (first list)) (flatten (rest list)))) ;nested list
   (T (my_append (list (first list)) (flatten (rest list))))))  ;single element



