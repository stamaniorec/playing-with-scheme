(define (all? lst f)
    (if (null? lst)
    	#t
    	(and (f (car lst)) (all? (cdr lst) f))    
    )
)