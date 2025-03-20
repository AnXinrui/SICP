#lang scheme 

(define (map proc items)
  (if (null? items)
    null
    (cons (proc (car items)) (map proc (cdr items)))))
  
(define (square x) (* x x))

(map square (list 1 2 3 4 5))

(define (square-list items)
  (map square items))

(square-list (list 1 2 3 4 5))


