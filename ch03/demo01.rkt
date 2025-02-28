#lang sicp
(define balance 100)
(define (withdraw amount)
  (if (>= balance amount) 
    (begin (set! balance (- balance amount))
      balance)
    "Insufficient"))

(withdraw 39)
(withdraw 90)