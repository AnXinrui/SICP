#lang scheme

(define (average a b)
  (/ (+ a b) 2))

;; Define a tolerance level for the fixed-point calculation
(define tolerance 0.00001)

;; Function to calculate whether the difference is within the tolerance
(define (close-enough? v1 v2)
  (< (abs (- v1 v2)) tolerance))

(define (display-info step guess)
  (display "Step: ")
    (display step)
    (display " ")
    
    (display "Guess: ")
    (display guess)
    (newline))

;; Define fixed-point function
(define (fixed-point f first-guess)
  (define (try guess step)
    (display-info step guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try (average next guess) (+ step 1)))))
  (try first-guess 1))

(define (fixed-point-nodamping f first-guess)
  (define (try guess step)
    (display-info step guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next (+ step 1)))))
  (try first-guess 1))

;; Calculate 
(define function-with-damping
  (fixed-point (lambda (x)
                 (/ (log 1000) (log x)))
               2.0))

(define function-without-damping
  (fixed-point-nodamping (lambda (x)
                 (/ (log 1000) (log x)))
               2.0))

;; Display the result
(display "function-with-damping: ")
(display function-with-damping)
(newline)
(display "function-without-damping: ")
(display function-without-damping)