#lang scheme

(define (sqrt x precision)
  (define (avg x y) 
    (/ (+ x y) 2))
  (define (good-enough? guess)
    (define diff (- x (* guess guess)))
      (< (abs diff) precision))
  (define (sqrt-iter guess)
    (if (good-enough? guess)
        guess
        (sqrt-iter (avg (/ x guess) guess))))  
  (sqrt-iter 1))
  
(sqrt 2.0 0.000000000000001)