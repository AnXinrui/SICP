#lang scheme

(define (cont-frac N D k)
  (define (iter i result)
    (if (= i 0)
          result
          (iter (- i 1)
                (/ (N i) (- (D i) result)))))
  (iter (- k 1) (/ (N k) (D k))))

(define (tan-cf k x)

    (define (N i)
        (if (= i 1) x (* x x)))

    (define (D i)
        (- (* i 2) 1))

    (cont-frac N D k))