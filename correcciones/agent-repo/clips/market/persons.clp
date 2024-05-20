;; initialize working mem

;; Este reset esta de mas, ya tenemos uno en run.clp
;;(reset)

(defrule r1 (hecho a) => (assert (hecho b)))
(defrule r2 (hecho b) => (assert (hecho c)))
(defrule r3 (hecho c) => (assert (hecho d)))
(defrule r4 (hecho d) => (assert (hecho e)))

;;Tell fact a
(assert (hecho a))

;;Call the inference engine
;; Este run esta de mas, ya tenemos uno en run.clp
;;(run)
