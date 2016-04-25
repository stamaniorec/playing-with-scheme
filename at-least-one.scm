(define (at-least-one lst f)
	(if (null? lst)
    	#f    
        (or (f (car lst)) (at-least-one (cdr lst) f))
    )
)