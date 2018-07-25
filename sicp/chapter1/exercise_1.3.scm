;;;Exercise 1.3

(define (max3 a b c)
    (cond ((and (> a b) (> a c)) a)
          ((and (> b a) (> b c)) b)
          (else c)))
        
(define (max2 a b)
    (if (> a b)
        a
        b))

(define (result a b c)
    (cond ((= (max3 a b c) a) (+ (* a a) (* (max2 b c) (max2 b c))))
          ((= (max3 a b c) b) (+ (* b b) (* (max2 a c) (mac2 a c))))
          (else (+ (* c c) (* (max2 a b) (max2 a b))))))

(result 3 4 5)