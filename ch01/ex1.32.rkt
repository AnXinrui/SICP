#lang scheme

(define (accumulate combiner null-value term a next b)
  (if (> a b) null-value (combiner (term a) (accumulate combiner null-value term (next a) next b))))

(define (sum term a next b)
  (accumulate + 0 term a next b))

(define (f x) (* x 2)) 

(sum f 0 (lambda(i) (+ i 1)) 5)

