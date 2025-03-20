#lang scheme 

(define (one-through-four)
    (let ((a 1)
          (b 2)
          (c 3)
          (d 4))
        (list a b c d)))

(one-through-four)

(car (one-through-four))
(cdr (one-through-four))

(define (list-ref items n)
    (if (= n 0)
        (car items)
        (list-ref (cdr items) (- n 1))))

(list-ref (one-through-four) 2)

(define (length items)
    (if (null? items)
        0
        (+ 1 (length (cdr items)))))

(length (one-through-four))

(define (append list1 list2)
    (if (null? list1)
        list2
        (cons (car list1) (append (cdr list1) list2))))

(append (one-through-four) (one-through-four))
