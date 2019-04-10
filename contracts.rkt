#lang racket	  

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
;    
; Lab 12 -- Contract examples	  
;	  
; The goal of this lab is to protect two functions using define/contract so they fail gracefully. 
; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;    



(provide fib    
         append) 

    

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
; 
; Honor pledge (please write your name.)
;
; I **firstname lastname** have completed this code myself, without	  
; unauthorized assistance, and have followed the academic honor code.	
;	
; Edit the code below to complete your solution. 
; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;    




(define (fib n)
  (if (<= n 1)	  
      n 
      (+ (fib (- n 1))
         (fib (- n 2))))) 
    
	  
(define (append lst0 lst1) 
  (if (null? lst0)
      lst1    
      (cons (car lst0)	  
            (append (cdr lst0)	  
                    lst1))))	  



