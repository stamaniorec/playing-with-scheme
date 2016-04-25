; how many times an item is present in a list
(define (occurrences-in-list item lst)
    (if (null? lst)
        0
        (+
            (if (= (car lst) item) 1 0)
            (occurrences-in-list item (cdr lst))
        )
    )
)

; construct a list of occurences of every item in l1 in l2
; e.g. (occurrences ‘(1 2 3) ‘( 1 2 4 1 )) -> (2 1 0)
(define (occurrences l1 l2)
    (if (= (length l1) 1)
        (list (occurrences-in-list (car l1) l2))
        (cons (occurrences-in-list (car l1) l2) (occurrences (cdr l1) l2))
    )
)

(display (occurrences '(1 2 3) '( 1 2 4 1 )))