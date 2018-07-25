#lang racket/base

(require rackunit)

(define (F n)
    (if (< n 3)
        n
        (+ (F (- n 1)) (F (- n 2)) (F (- n 3)))))

(define (F2 n)
        (F_iter 2 1 0 n))

(define (F_iter a b c count)
    (if (= count 0)
        c
        (F_iter (+ a b c) a b (- count 1))))

(F 5)
(F2 5)

(check-equal? (F 5) 11)
(check-equal? (F2 5) 11)