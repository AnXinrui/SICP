#lang scheme

(define (cons x y)
    (* (expt 2 x)
       (expt 3 y)))

(define (car z)
    (define (iter a count)
        (if (= (remainder a 2) 0)
            (iter (/ a 2) (+ count 1))
            count))
    (iter z 0))

(define (cdr z)
    (define (iter a count)
        (if (= (remainder a 3) 0)
            (iter (/ a 3) (+ count 1))
            count))
    (iter z 0))

(define p (cons 2 3))
(car p)
(cdr p)

