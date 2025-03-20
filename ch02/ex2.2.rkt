#lang scheme 

(define (average a b)
  (/ (+ a b) 2))

(define (make-point x y) 
  (cons x y))

(define (x-point point)
  (car point))

(define (y-point point)
  (cdr point))

(define (make-segment start-point end-point)
  (cons start-point end-point))

(define (start-segment segment)
  (car segment))

(define (end-segment segment)
  (cdr segment))

(define (midpoint-segment segment)
  (let ((start (start-segment segment))
        (end (end-segment segment)))
      (make-point (average (x-point start) (x-point end))
                  (average (y-point start) (y-point end)))))

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

; TEST 
(define p1 (make-point 1 2))
(define p2 (make-point 3 4))
(define s1 (make-segment p1 p2))
(print-point (midpoint-segment s1))

