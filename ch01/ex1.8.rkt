#lang sicp

(define (good-enough guess x) 
  (< (abs (- (cube guess) x)) (abs (* 0.001 x))))

(define (improve y x)
  (/ (+ (/ x (square y)) y y) 3))

(define (square x) (* x x))

(define (cube x) (* x x x))

; 牛顿法求立方根
(define (cube-iter guess x)
  (if (good-enough guess x)
      guess
      (cube-iter (improve guess x) x)))

(define (cube-root x) (cube-iter 1.0 x))

(cube-root 27)
(cube-root -27)