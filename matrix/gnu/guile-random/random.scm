;; random.scm

(map random (cdr (iota 9999)))
(set! *random-state* (random-state-from-platform))
