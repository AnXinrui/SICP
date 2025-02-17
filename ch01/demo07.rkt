#lang sicp

(define (fib1 n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib (- n 1)) (fib (- n 2))))))

(define (fib n)
  (iter 1 0 n))

(define (iter a b count)
  (if (= count 0)
      b
      (iter (+ a b) a (- count 1))))

(fib1 3)
(fib 3)

(fib1 4)
(fib 4)

(fib1 5)
(fib 5)