#lang scheme

(define (expt b n)
    (if (= n 0)
        1
        (* b (expt b (- n 1)))))

(expt 2 3)

; 递归空间复杂度： O(n) : 因为每次递归调用都会在栈中创建一个新的帧，而栈的大小与递归的深度成正比。
