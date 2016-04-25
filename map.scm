(define (accumulate lst null_value oper term)
	(if (null? lst)
		null_value
		(oper
			(term (car lst))
			(accumulate (cdr lst) null_value oper term)	      
		)
	)	
)

(define (map lst mapper)
    (accumulate lst '() cons mapper)
)

(map (list 1 2 3 4 5) (lambda (x) (* x 2)))