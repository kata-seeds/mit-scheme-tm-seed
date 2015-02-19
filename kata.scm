(define (greeter prefix)
  (lambda (name)
    (string-append prefix ", " name)))
