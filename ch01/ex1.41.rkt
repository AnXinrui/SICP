#lang scheme 

(define (double g) 
  (lambda (x)
    (g (g x))))

(define x 1)

(define (inc x) 
  (+ x 1))

((double inc) 2)

(((double (double double)) inc) 5)