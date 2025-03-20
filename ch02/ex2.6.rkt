#lang scheme

;; Church 数字的实现
(define zero (lambda (f) (lambda (x) x)))

(define (add-1 n)
  (lambda (f)
    (lambda (x)
      (f ((n f) x)))))

;; 测试
(define one (add-1 zero))
(define two (add-1 one))

;; 辅助函数：将 Church 数字转换为普通数字
(define (church->int n)
  ((n (lambda (x) (+ x 1))) 0))

;; 测试 Church 数字
(church->int zero)   ; 应该返回 0
(church->int one)    ; 应该返回 1
(church->int two)    ; 应该返回 2
