; f(x) = (x-2)^2
(define (f x)
	((lambda (x) (* x x)) (- x 2))
)

; for which x in the interval [a,b] does f(x) reach its min value? 
(define (g a b)
	(if (= a b)
	    a
	    (let ((next (g (+ a 1) b)))
	    (if (< (f a) (f next) )
	        a
	        next)))
)

(display (g 0 5))
