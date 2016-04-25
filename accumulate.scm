(define (accumulate lst null_value oper term)
	(if (null? lst)
		null_value
		(oper
			(term (car lst))
			(accumulate (cdr lst) null_value oper term)	      
		)
	)	
)

(display (accumulate (list 1 2 3 4 5) 0 + (lambda (x) x)))