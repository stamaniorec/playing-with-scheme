(define (f1 x) (* x 10))
(define (f2 x) (expt 2 x))

; given two single-argument functions and a list
; alternate calling f and g for each item in the list
; and build a new list from the values you get
(define (mash f g lst)
	(if (= (length lst) 1)
    	(list (f (car lst)))
    	(cons (f (car lst)) (mash g f (cdr lst)))    
    )  
)

(mash f1 f2 '(1 2 3 4 5))