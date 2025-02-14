#lang sicp
(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))

(abs 9)
(abs 0)
(abs (- 9))

(define (abs1 x)
  (cond ((< x 0) (- x))
        (else x)))

(abs1 9)
(abs1 0)
(abs1 (- 9))

(define (abs2 x)
  (if (< x 0) (- x) x))

(abs2 9)
(abs2 0)
(abs2 (- 9))