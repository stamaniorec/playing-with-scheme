(define (reduce lst oper initial)
    (if (null? lst)
        initial
        (reduce (cdr lst) oper (oper (car lst) initial))
    )
)

(display (reduce (list 1 2 3 4) (lambda (x y) (* x y)) 1))
