#lang racket/base

(require rackunit)

(define (inc a)
    (+ a 1))

(define (dec a)
    (- a 1))

(define (F a b)
    (if (= a 0)
        b
        (inc (F (dec a) b))))

(define (G a b)
    (if (= a 0)
        b
        (G (dec a) (inc b))))
    
(G 4 5)
(F 4 5)

(check-equal? (G 4 5) 9)
(check-equal? (F 4 5) 9)