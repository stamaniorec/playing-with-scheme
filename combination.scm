(define (C N K)
    (if (or (= K 0) (= K N))
        1
        (+ 
    		(C (- N 1) K)
    		(C (- N 1) (- K 1))
    	)
    )
)

(display (C 10 5))
