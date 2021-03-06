#lang racket/base

(require rackunit)

(define (square x)
    (* x x))

(define (improve guess x)
    (average guess (/ x guess)))

(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))

(define (average x y)
    (/ (+ x y) 2))

(define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x)
                   x)))

(define (sqrt x)
    (sqrt-iter 1.0 x))

(sqrt 25)

;custom if

(define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter-new-if guess x)
    (new-if (good-enough? guess x)
        guess
        (sqrt-iter-new-if (improve guess x)
                   x)))

(define (sqrt-new-if x)
    (sqrt-iter-new-if 1.0 x))

;Result: sqrt-new-if doesn't work: "Aborting!: maximum recursion depth exceeded"
;(sqrt-new-if 25)

(check-equal? (sqrt 25) 5.000023178253949)