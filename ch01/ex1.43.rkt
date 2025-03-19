#lang scheme 

(define (repeat f num)
  (if (= num 1)
    f  ; 当 num=0 时返回恒等函数
    (lambda (x) (f ((repeat f (- num 1)) x)))))

(define (square x) (* x x))

((repeat square 4) 2)  ; 对 2 应用 4 次 square，即 2^(2^4) = 65536