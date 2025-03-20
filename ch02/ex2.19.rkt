#lang scheme 

(define (first-denomination item)
  (car item))

(define (except-first-denomination item)
  (cdr item))

(define (no-more? item)
  (null? item))

(define (cc amount coin-values)
  (define (iter amount coin-values)
    (cond ((= amount 0) 1)
          ((or (< amount 0) (no-more? coin-values)) 0)
          (else 
            (+ (cc (- amount (first-denomination coin-values))
                  coin-values)
               (cc amount 
                  (except-first-denomination coin-values))))))
  (iter amount coin-values))

(cc 100 (list 1 5 10 25 50))
