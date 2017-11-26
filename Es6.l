;;;; **** my_reverse ****
;;;; this function tells if a list is palindrome or not
;;;; eg. palindromee (x a n a x) -> T

(defun palindrome (list) 
  (equal list (reverse list)))