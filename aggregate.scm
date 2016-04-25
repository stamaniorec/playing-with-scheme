(define (aggregate term cur end oper null_value next)
	(if (<= cur end)
	    null_value
		(oper (term cur) (aggregate term (next cur) end oper null_value next))
	)
)

(define (factorial n)
	(aggregate (lambda (x) x) n 1 * 1 (lambda (x) (- x 1)))
)

(display (factorial 5))
(newline)