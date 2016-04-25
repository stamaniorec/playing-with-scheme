(define (has-fixed-point lst f)
	(if (null? lst)
    	#f
        (or (= (f (car lst)) (car lst)) (has-fixed-point (cdr lst) f))
    )  
)

(define (fixed? f lst)
  	(if (null? lst)
    	#t
        (and (has-fixed-point (car lst) f) (fixed? f (cdr lst)))
    )
	
)

(fixed? (lambda (x) (+ (* x x) (- x 1))) '((0 1 -1) (1 -1) (0 -1)))
(fixed? (lambda (x) (+ (* x x) (- x 1))) '((0 5 6) (1 -1) (0 -1)))