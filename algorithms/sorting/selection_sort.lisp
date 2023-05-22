
;LISP implementation of selection sort

(defun selection-sort (sequence)
  (let ((end (length sequence)))
    (labels ((position-of-minimum (index minimum result)
               (if (= index end)
                   result
                   (let ((x (elt sequence index)))
                     (if (< x minimum)
                         (position-of-minimum (1+ index) x index)
                         (position-of-minimum (1+ index) minimum result)))))
             (select-and-swap (start)
               (if (= start end)
                   (values)
                   (let* ((x (elt sequence start))
                          (position (position-of-minimum start x start)))
                     (if (= position start)
                         (select-and-swap (1+ start))
                         (progn
                           (setf (elt sequence start) (elt sequence position)
                                 (elt sequence position) x)
                           (select-and-swap (1+ start))))))))
      (unless (< end 2)
        (select-and-swap 0))
      sequence)))

