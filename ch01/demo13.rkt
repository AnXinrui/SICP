#lang scheme

(define (average x y)
  (/ (+ x y) 2))

(define (close-enough? x y)
  (< (abs (- x y)) 0.001))

(define (search f neg-point pos-point)
  (let ((midpoint (average neg-point pos-point)))
    (if (close-enough? neg-point pos-point)
        midpoint
        (let ((test-value (f midpoint)))
          (cond ((positive? test-value)
                 (search f neg-point midpoint))
                ((negative? test-value)
                 (search f midpoint pos-point))
                (else midpoint))))))

;; 使用示例
(define (f x) (- (* x x x) (* 2 x) 3))  ; 函数 f(x) = x³ - 2x - 3

(search f 1.0 2.0)  ; 寻找 f 在区间 [1, 2] 内的零点