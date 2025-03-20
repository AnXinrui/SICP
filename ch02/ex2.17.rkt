#lang scheme 

(define (last-pair item)
  (cond ((null? (cdr item)) item)
        (else (last-pair (cdr item)))))

; test
(define item '(1 2 3 4 5))
(last-pair item)
