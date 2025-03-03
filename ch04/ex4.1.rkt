#lang scheme

; 总是从左往右
(define (list-of-values exps env)
  (if (not-operands? exps)
    '()
    (let ((first-value (eval (first-operand exps) env)))
      (cons first-value
        (list-of-values (rest-operands exps) env)))))

; 从右往左
(define (list-of-values exps env)
  (if (not-operands? exps)
    '()
    (let ((rest-value (list-of-values (rest-operands exps) env)))
      (cons (eval (first-operand exps) env))
        rest-value)))