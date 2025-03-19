#lang scheme

(define dx 0.00001)

(define (square x) (* x x))

(define (repeat f num)
  (if (= num 1)
    f  ; 当 num=0 时返回恒等函数
    (lambda (x) (f ((repeat f (- num 1)) x)))))

(define (smooth f)
  (lambda (x) 
    (/ 
      (+ (f x) (f (+ x dx)) (f (- x dx)))
      3)))

 ((smooth square) 5)

(define (smooth-n-times f n)
    (if (= n 0)
        f
        (smooth (smooth-n-times f (- n 1)))))

((smooth-n-times square 4) 5)