
; Lisp implementation of insertion sort algorithm
(defun insertion-sort (sequence)
  (let ((end (length sequence)))
    (labels ((insert (x index)
               (if (minusp index)
                   (setf (elt sequence (1+ index)) x)
                   (let ((y (elt sequence index)))
                     (if (< x y)
                         (progn
                           (setf (elt sequence (1+ index)) y)
                           (insert x (1- index)))
                         (setf (elt sequence (1+ index)) x)))))
             (repeat-insertion (start)
               (if (= start end)
                   (values)
                   (progn
                     (insert (elt sequence start) (1- start))
                     (repeat-insertion (1+ start))))))
      (unless (< end 2)
        (repeat-insertion 1))
      sequence)))

