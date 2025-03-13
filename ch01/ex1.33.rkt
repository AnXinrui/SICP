#lang scheme 

(require "./utils.rkt")

(define (filtered-accumulate filter combiner null-value term a next b)
  (cond ((> a b) null-value)
        ((filter a)
         (combiner (term a)
                  (filtered-accumulate filter combiner null-value term (next a) next b)))
        (else
         (filtered-accumulate filter combiner null-value term (next a) next b))))

(define (prime-sum a b)
  (filtered-accumulate prime? + 0 identity a inc b))


;; 测试 prime-sum 函数
(prime-sum 2 10)  ; 应该返回 17 (2 + 3 + 5 + 7)
(prime-sum 1 5)   ; 应该返回 10 (2 + 3 + 5)