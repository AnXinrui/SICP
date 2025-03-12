#lang scheme

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n) 
        ((= (remainder n test-divisor) 0) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))
(define (smart-divisor x)
  (find-divisor x 2))

(define (square x) (* x x))

(current-inexact-milliseconds)

(smart-divisor 199)
(smart-divisor 1999)
(smart-divisor 19999)

(current-inexact-milliseconds)