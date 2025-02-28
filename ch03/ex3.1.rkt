#lang sicp

(define (make-accumulator x)
  (let ((init x))
    (lambda (val)
      (begin 
        (set! init (+ init val)) init))))

(define A (make-accumulator 5))

(A 10)
(A 10)