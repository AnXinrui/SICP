#lang scheme 

(define (even? x) (= (remainder x 2) 0))

(define (definite-integral f a b n)
  (define h (/ (- b a) n))
  (define (yk k)  (f (+ a (* k h))))
  (define (sum-y i res) 
    (if (> i n)
        res
        (cond 
          ((= i 0)  (sum-y (+ i 1) (+ (yk i) res)))
          ((even? i)  (sum-y (+ i 1) (+ (* 2 (yk i)) res)))
          (else (sum-y (+ i 1) (+ (* 4 (yk i)) res))))))
  (* (/ h 3) (sum-y 0 0)))

(define (f x) x)

(definite-integral f 0 6 5000)