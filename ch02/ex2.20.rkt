#lang scheme 

(define (filter pred lst)
  (if (null? lst)
      '()
      (if (pred (car lst))
          (cons (car lst) (filter pred (cdr lst)))
          (filter pred (cdr lst)))))

(define (same-parity nums)
  (if (even? (car nums)) (filter even? nums)
      (filter odd? nums)))

(same-parity (list 1 2 3 4 5 6 7 8 9 10))
(same-parity (list 2 3 4 5 6 7 8 9 10))

