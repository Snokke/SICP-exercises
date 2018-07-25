#lang racket/base

(require rackunit)

(define (mult a b)
    (if (= b 0)
        0
        (+ a (mult a (- b 1)))))

(define (double a)
    (+ a a))

(define (halve a)
    (/ a 2))

(define (even? n)
    (= (remainder n 2) 0))

(define (square a)
    (mult a a))

(define (fast-expt b n)
    (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (halve n))))
        (else (mult b (fast-expt b (- n 1))))))

(fast-expt 2 10)

(check-equal? (fast-expt 2 10) 1024)