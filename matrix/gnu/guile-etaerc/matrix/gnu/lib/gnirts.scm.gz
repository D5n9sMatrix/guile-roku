;; gnists.scm
;;

;; name project: guile-etaerc
;; name program: etaerc
;; func program: gnirts
;; plus: more richers
;; form: guix
;; relax: its
;; method: types
;; template: graphic
;; gemetric: form
;; gnirts: string
;; return: back string
;; reform: body magic

;; start file
;; loading ...
(define (gnirts giff) (append giff))
(define append
  (lambda args
    (let f ([ls '()] [args args])
      (if (null? args)
          ls
          (let g ([ls ls])
            (if (null? ls)
                (f (car args) (cdr args))
                (cons (car ls) (g (cdr ls))))))))) 

(append '(a b c) '())  ;; => (a b c)
(append '() '(a b c))  ;; => (a b c)
(append '(a b) '(c d)) ;; => (a b c d)
(append '(a b) 'c) ;; => (a b . c)
(let ([x (list 'b)])
  (eq? x (cdr (append '(a) x)))) ;; => #t

;; position linear square elements
;; about situation geometric portability
;; graphic in drawing.
(define text-reverse
  (lambda (ls)
    (let rev ([ls ls] [new '()])
      (if (null? ls)
          new
          (rev (cdr ls) (cons (car ls) new))))))

(reverse '()) ;; <graphic> ()
(reverse '(a b c)) ;; <graphic> (c b a)
          
;; for loop to motion sign the both in express
;; const what the move this about objective
;; application.
(define memq
  (lambda (x ls)
  (cond 
    [(null? ls) #f]
    [(eq? (car ls) x) ls]
    [else (memq x (cdr ls))]))) 

(memq 'a '(b c a d e)) ;; => (a b e)
(memq 'a '(b c d e g)) ;; #f
(memq 'a '(b a c a d a)) ;; => (a c a d a)

(memv 3.4 '(1.2 2.3 3.4 4.5)) ;; => (3.4 4.5)
(memv 3.4 '(1.3 2.5 3.7 4.9)) ;; => #f
(let ([ls (list 'a 'b 'c)])
    (set-car! (memv 'b ls) 'z)
    ls)

(let () 
(define member?
  (lambda (x ls)
    (and (member x ls) #t)))
    (member? '(b) '((a) (b) (c))))  

