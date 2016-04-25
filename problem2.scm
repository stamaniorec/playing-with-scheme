; average(f, g) = (f(x) + g(x)) / 2
(define (average f g)
  (lambda (x) (/ (+ (f x) (g x)) 2))
)

; product of average(f, n^x) for each number from 1 to n
(define (calcprod f n)
	(*
		(average f (lambda (x) (expt n x)))
	 	(calcprod f (- n 1))
	)
)