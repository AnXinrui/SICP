#lang scheme
(define (pascal row col)
  (cond 
    ((or (= col 1) (= col row)) 1)  ; 第一列或最后一列的元素都是 1
    (else (+ (pascal (- row 1) (- col 1)) 
             (pascal (- row 1) col)))))  ; 递归计算 Pascal 值

; 迭代打印 Pascal 三角形
(define (print-pascal n)
  (define (iter i j)
    (begin
      (display (pascal i j))  ; 打印 Pascal 值
      (display " ")  ; 加空格，格式更好看
      (cond 
        ((= i j)  ; 换行并进入下一行
         (newline)
         (if (< i n) (iter (+ i 1) 1)))  ; 继续递归调用下一行
        (else (iter i (+ j 1))))))  ; 继续当前行的下一个元素
  (iter 1 1))  ; 从 (1,1) 开始

; 测试
(print-pascal 5)
