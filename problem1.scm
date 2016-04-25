; The smallest number in the interval [a;b] for which
; the sum of its digits is divisible by k

(define (sum-of-digits n)
	(if (= n 0)
		0
		(+ (remainder n 10) (sum-of-digits (quotient n 10)))
	)
)

(define (min-sum-digit a b k)
	(if (> a b)
		#f
		(if (= (remainder (sum-of-digits a) k) 0)
			a
			(min-sum-digit (+ a 1) b k)
		)
	)
)

(display (min-sum-digit 10 100 5))