#lang scheme 

(define (reverse item)
  (define (iter items result)
    (if (null? items)
        result
        (iter (cdr items) (cons (car items) result))))
  (iter item '()))

; test
(define item '(1 2 3 4 5))
(reverse item)



