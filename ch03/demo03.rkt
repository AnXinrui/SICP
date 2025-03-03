#lang scheme

(define (random-in-range low hign) 
  (let ((range (- hign low)))
    (+ low (random range))))

(random-in-range 3 9)