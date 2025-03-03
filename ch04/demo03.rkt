#lang scheme
; eval
(define (eval exp env)
  (cond ((self-evaluating? exp) exp)
        (else 
          (error "Unknown expression type -- EVAL" exp))))


; apply 
(define (apply procedure arguments)
  (cond ((primitive-pro))))




