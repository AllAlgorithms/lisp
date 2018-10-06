(defun linear-search (lst el)
    (cond ((null lst) nil)
          ((equal (car lst) el) t)
          (t (linear-search (cdr lst) el))))

(print (linear-search '(1 2 3) 1))
(print (linear-search '(1 2 3) 0))
