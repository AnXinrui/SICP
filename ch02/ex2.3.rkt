#lang scheme 

(define (make-point x y) 
  (cons x y))

(define (x-point point)
  (car point))

(define (y-point point)
  (cdr point))

(define (make-rectangle start-point end-point)
  (cons start-point end-point))

(define (start-point rectangle)
  (car rectangle))

(define (end-point rectangle)
  (cdr rectangle))

(define (perimeter rectangle) 
  (let ((start (start-point rectangle))
        (end (end-point rectangle)))
       (- (+ (x-point end) (y-point end)) (+ (x-point start) (y-point start)))))

(define (area rectangle)
  (let ((start (start-point rectangle))
        (end (end-point rectangle)))
       (* (- (x-point end) (x-point start)) (- (y-point end) (y-point start)))))


; TEST 
(define p1 (make-point 1 2))
(define p2 (make-point 3 4))
(define s1 (make-rectangle p1 p2))
(perimeter s1)
(area s1)