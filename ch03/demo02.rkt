#lang sicp
(define new-withdraw
  (let ((balance 100))
    (lambda (amount)
      (if (>= balance amount)
        (begin (set! balance (- balance amount))
          balance)
        "insufficient"))))

(new-withdraw 39)
(new-withdraw 90)