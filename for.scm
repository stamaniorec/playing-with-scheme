(define (for start end oper)
    (if (<= start end)
        (begin
            (oper start)
            (for (+ start 1) end oper)
        )
    )   
)

(for 1 5 (lambda (x) (begin
    (display (* 2 x))
    (newline)
)))
