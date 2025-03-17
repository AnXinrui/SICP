#lang scheme

(define (square x) (* x x))

(define (cube x) (* x x x))

(define (inc n) (+ n 1))

(define (dec n) (- n 1))

(define (identity x) x)

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (product term (next a) next b))))

(define (even? x) (= (remainder x 2) 0))

;; 简单的素数判断函数
(define (prime? n)
  (define (divides? a b)
    (= (remainder b a) 0))
  
  (define (test-divisor d)
    (cond ((> (* d d) n) #t)          
          ((divides? d n) #f)         
          (else (test-divisor (+ d 1)))
    ))
  
  (if (< n 2)                         
      #f
      (test-divisor 2)))              

;; 计算给定范围内素数之和
(define (prime-sum a b)
  (define (prime-term x)
    (if (prime? x) x 0))
  (sum prime-term a inc b))

(define (average a b)
  (/ (+ a b) 2))

