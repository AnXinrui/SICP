#lang scheme
;; Define a tolerance level for the fixed-point calculation
(define tolerance 0.00001)

;; Function to calculate whether the difference is within the tolerance
(define (close-enough? v1 v2)
  (< (abs (- v1 v2)) tolerance))

;; Define fixed-point function
(define (fixed-point f first-guess)
  (define (try guess)
    (display guess)
    (newline)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

;; Calculate the golden ratio using fixed-point
(define golden-ratio
  (fixed-point (lambda (x)
                 (+ 1 (/ 1 x)))
               1.0))

;; Display the result
(display "The calculated golden ratio is: ")
(display golden-ratio)