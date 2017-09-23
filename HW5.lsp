;;;;CS 351 HW5 Aaron Brunette

;;;ONEFIB
(defun ONEFIB (n)
	"Returns Nth fibonacci number."
	(if (or (= n 0) (= n 1)) 1
	(+ (ONEFIB (- n 1)) (ONEFIB(- n 2))))
)

;;;ALLFIB
(defun ALLFIB (n)
	"Returns all fibonacci numbers up till the Nth number."
	(cons (ONEFIB n) (cons (ALLFIB (- n 1)) nil))
)

;;;GETELEM
(defun GETELEM (L n)
	"Get's the Nth element of the list."
	(if(= n 0) (format nil "n not found.") (if(= n 1) (car L) (GETELEM (cdr L) (- n 1))))
)

;;;DELELEM
(defun DELELEM (n L)
	"Delete's the Nth element of the list."
	(if (listp L) (format nil "List is too small.") (if(= n 1) (cdr L) (cons (car L) (DELELEM (- n 1) L))))
)

;;;MAXIMUM
(defun MAXIMUM (L)
	"Find the largest value in a list."
	(if(listp (cdr L)) (car L) (if (< (car L) (car(cdr L))) (MAXIMUM (cdr L)) (MAXIMUM(cons(car L) (cdr(cdr L))))))
)

;;;COUNTELEMS
(defun COUNTELEMS (L)
	"Finds the number of elements in a list."
	(if(listp L) 1 (+ 1 (COUNTELEMS(cdr(L)))))
)

;;;ISPAL
(defun ISPAL (L)
	"Determines if a list is a palindrome."
	(if(listp L) (print "True") (if(= (car L) (car(reverse L))) (ISPAL(cdr(reverse(cdr(reverse L))))) (print "False")))	
)

;;;FLAT
(defun FLAT ()
	"Removes all sub-lists within a main list."

)
