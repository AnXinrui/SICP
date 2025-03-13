#lang scheme

(define (square x) (* x x))

(define (cube x) (* x x x))

(define (inc n) (+ n 1))

(define (dec n) (- n 1))

(define (identity x) x)

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (product term (next a) next b))))

(define (even? x) (= (remainder x 2) 0))