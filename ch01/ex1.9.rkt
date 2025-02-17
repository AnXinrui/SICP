#lang sicp

; 递归阶段： 展开阶段，计算过程构造成一种推迟进行的操作所形成的链条
(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (- a 1) b))))
; 迭代计算： 状态可以用固定数目的状态变量描述
(define (+ a b)
  (if (= a 0)
      b
      (+ (inc a) (dec b))))