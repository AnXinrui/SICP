#lang scheme

(define (square x) (* x x))

(define (expt-iter b n a)
  (cond 
    ((= n 0) a)
    ((= (remainder n 2) 0)  (expt-iter (square b) (/ n 2) a))
    (else (expt-iter b (- n 1) (* a b)))))

(define (fast-expt b n)
  (expt-iter b n 1))

(fast-expt 2 3)
(fast-expt 3 2)