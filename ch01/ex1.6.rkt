#lang sicp

(define (new-if p x y)
  (cond (p x)
       (else y)))

(define (sqrt-iter guess x)
  (new-if (good-enough guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (good-enough guess x) 
  (< (abs (- (square guess) x)) 0.0001))


(define (improve guess x)
  (average (/ x guess) guess))

(define (average a b) 
  (/ (+ a b) 2))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (square x) (* x x))

(sqrt 9)
(sqrt 2)