#lang sicp
(define (minv a b) 
  (if (< a b) a b))
 
(define (minValue a b c) 
  (if (> (minv a b) c) c (minv a b)))

(define (twoSum a b c) (- (+ a b c) (minValue a b c)))

(twoSum 1 2 3)
(twoSum 3 2 1)