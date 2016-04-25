; calculate the difference in sublists' lengths
; return the crazy value if not the same
(define (helper l1 l2)
	(if (= (length l1) 1)
    	(- (length (car l1)) (length (car l2)))
        (if (= (- (length (car l1)) (length (car l2))) (helper (cdr l1) (cdr l2)))
        	    (helper (cdr l1) (cdr l2))
            	-10000000000
        )
    )
)

(define (match-lengths? l1 l2)
	(not (= (helper l1 l2) -10000000000))
)

(display (match-lengths? '( () (1 2) (3 4 5)) '( () (2 3) (5 6 7)))) (newline)
(display (match-lengths? '( () (1 2) (3 4 5)) '( () (2 3 4) (5 6 7))))