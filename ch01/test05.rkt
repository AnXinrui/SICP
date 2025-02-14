#lang sicp

(define (new-if p x y)
  (cond (p x)
       (else y)))

(new-if #t (display "good ") (display "bad"))