#lang scheme

(define (runtime)
  (current-inexact-milliseconds))

(define (prime? n)
  (= (smallest-divisor n) n))

(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (sqr test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(define (divides? a b)
  (= (remainder b a) 0))

(define (search-for-primes n)
  (newline)
  (display n)
  (display "---")
  (primes-find 0 (+ n 1) (runtime)))

(define (primes-find cnt n start-time)
  (cond
    ((= cnt 3) (report-time (- (runtime) start-time)))
    ((prime? n) (primes-find (+ cnt 1) (+ n 1) start-time))
    (else (primes-find cnt (+ n 1) start-time))))

(define (report-time time)
  (display time))

(search-for-primes 1000)
(search-for-primes 10000)
(search-for-primes 100000)
(search-for-primes 1000000)