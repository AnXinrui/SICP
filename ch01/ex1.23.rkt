#lang scheme

;; 原始方法：检查所有连续整数（从2开始）
(define (smallest-divisor-original n)
  (find-divisor-original n 2))

(define (find-divisor-original n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor-original n (+ test-divisor 1)))))

;; 改进方法：使用 next 函数跳过偶数
(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (next test-divisor)))))

(define (square x) (* x x))

(define (divides? a b)
  (= (remainder b a) 0))

(define (next x)
  (if (= x 2)
      3
      (+ x 2)))

;; 两种素数检测方法
(define (prime? n)
  (= n (smallest-divisor n)))

(define (prime-original? n)
  (= n (smallest-divisor-original n)))

;; 计时测试函数
(define (timed-prime-test n)
  (newline)
  (display n)
  (display ": 改进方法 - ")
  (start-prime-test n prime? (current-inexact-milliseconds))
  (display ", 原始方法 - ")
  (start-prime-test n prime-original? (current-inexact-milliseconds)))

(define (start-prime-test n prime-test? start-time)
  (if (prime-test? n)
      (report-prime (- (current-inexact-milliseconds) start-time))
      (begin (display "不是素数") #f)))

(define (report-prime elapsed-time)
  (display elapsed-time)
  (display "ms")
  #t)

(define (search-for-primes start end)
  (if (even? start)
      (search-for-primes (+ start 1) end)
      (cond ((> start end) (newline) 'done)
            (else (timed-prime-test start)
                  (search-for-primes (+ start 2) end)))))

;; 测试不同范围的素数
(display "\n小数范围的素数测试:")
(search-for-primes 1000 1020)

(display "\n中等数范围的素数测试:")
(search-for-primes 10000 10040)

(display "\n大数范围的素数测试:")
(search-for-primes 100000 100050)

;; 测试更大的素数以显示更明显的时间差异
(display "\n非常大的素数测试:")
(timed-prime-test 1000000007) ;; 10亿级别的素数
(timed-prime-test 1000000009)
(timed-prime-test 10000000019) ;; 100亿级别的素数

;; 计算平均速度比
(display "\n\n理论上，使用 next 函数的方法应该比原始方法快接近2倍，")
(display "\n因为它只检查约一半数量的可能除数。\n")
(display "从上面的测试结果可以观察实际的速度比。")