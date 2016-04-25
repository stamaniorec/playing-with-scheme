(define (max a b)
	(if (>= a b) a b)  
)

(define (max-fun f a b)
	(if (> a b)
        	-100000000000000000000
		(max (f a) (max-fun f (+ a 1) b))
	)
)

(display (max-fun (lambda (x) (* x 2)) 10 20))
