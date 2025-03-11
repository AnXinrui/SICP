#lang scheme

(define (even? x) (= (remainder x 2) 0))

(define (add-iter a n b)
  (cond 
    ((= n 0) b)
    ((even? n) (add-iter (+ a a) (/ n 2) b))
    (else (add-iter a (- n 1) (+ a b)))))

(define (add x y) 
  (add-iter x y 0))

(add 3 4)
(add 5 6)
(add 6 5)