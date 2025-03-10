#lang scheme 

(define (pascal row col)
  (cond ((or (= col 1) (= col row)) 1)
        (else (+ (pascal (- row 1) (- col 1)) 
                 (pascal (- row 1) col)))))

; TEST 
(define (print-pascal n)
  (define (iter i j)
    (begin
      (display (pascal i j))
      (display " ")
      (cond ((= j n) 'done)
            ((= i j) (begin
                       (newline)
                       (iter (+ i 1) 1)))
            (else (iter i (+ j 1))))))
  (iter 1 1))

(print-pascal 5)