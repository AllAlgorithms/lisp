
(defun merge-sort (list)
  (labels ((merge-aux (f s)
	     (cond
	       ((null f) s)
	       ((null s) f)
	       ((< (first f) (first s)) (list* (first f) (merge-aux (rest f) s)))
	       ((> (first f) (first s)) (list* (first f) (merge-aux f (rest s))))
	       ((= (first f) (first s)) (list* (first f)
					       (first s)
					       (merge-aux (rest f) (rest s)))))))
    (let ((len (list-length list)))
    (if (= len 1)
	list
	(merge-aux (merge-sort (subseq list 0 (ceiling len 2)))
		   (merge-sort (subseq list (ceiling len 2))))))))
