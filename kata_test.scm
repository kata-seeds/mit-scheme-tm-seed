(load "test-manager/load")
(load "kata")


(in-test-group greeters
  (define-test (greeting)
    (define hello-greeter (greeter "Hello"))
    (check (string=? (hello-greeter "sir") "Hello, sir"))))


(run-registered-tests)
