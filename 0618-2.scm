(define add1
  (lambda (n)
      (+ n 1)))

(define sub1
  (lambda (n)
      (- n 1)))

(define minus
  (lambda (n m)
    (cond
      ((zero? m) n)
      (else (sub1 (minus n (sub1 m)))))))

(define plus
  (lambda (n m)
    (cond
      ((zero? m) n)
      (else (add1 (plus n (sub1 m)))))))

(define /
  (lambda (n m)
    (cond
      ((< n m) 0)
      (else (add1 (/ (minus n m) m))))))

(define x
  (lambda (n m)
    (cond
      ((zero? m) 0)
      (else (plus n (x n (sub1 m)))))))

(define remainder
  (lambda (n m)
    (cond
      ((minus n (x m (/ n m))  )))))


(print (add1 '1))
(print (sub1 '1))
(print (minus '1 '1))
(print (plus '1 '1))
(print (/ '4 '2))
(print (x '4 '2))

(print (remainder '5 '2))
(print (remainder '3 '2))