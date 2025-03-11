#lang scheme

; 假设 gcd(a, b) = v
; 
; a = bq + r -> gcd(a, b) = r -> r % v = 0
; 
; gcd(a, b) = gcd(r, b)
; 为什么不是 gcd(a, b) = gcd(r, a)？
; gcd(r, a) -> gcd(r % a, r) ? 没意义

(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))

(gcd 3 4)
(gcd 12 3)




