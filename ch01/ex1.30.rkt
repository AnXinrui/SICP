#lang scheme
(require "./utils.rkt")

(define (numer-iter i)
  (cond 
    ((= i 1)  2)
    ((even? i)  (+ i 2))
    (else (+ i 1))))

(define (denom-term i)
    (if (odd? i)
        (+ i 2)
        (+ i 1)))

(define (product term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a)
                  (* (term a) result))))
    (iter a 1))

(define (pi n)
  (* 4 
    (exact->inexact 
      (/ (product numer-iter 1 (lambda(i) (+ i 1)) n)
         (product denom-term 1 (lambda(i) (+ i 1)) n)))))

(pi 10)
(pi 100)
(pi 1000)
(pi 10000)