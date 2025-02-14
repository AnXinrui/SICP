#lang sicp

(define (square x) (* x x))

(define (sum-of-square x y)
  (+ (square x) (square y)))

(square 9)
(sum-of-square 3 5)