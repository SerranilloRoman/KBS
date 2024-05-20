;; Declaración de hechos
(deftemplate isOn
    (slot subject)
    (slot location)
)

(deftemplate isNear
    (slot subject1)
    (slot subject2)
)

(deftemplate being
    (slot state)
    (slot subject)
)

(deftemplate has
    (slot subject1)
    (slot subject2)
)



 ;; Estado inicial
(deffacts initial-state
    (being (state hungry) (subject monkey))
    (isOn (subject chair) (location floor))
    (isOn (subject desk) (location floor))
    (isOn (subject banana) (location ceiling))
    (isOn (subject monkey) (location floor))
    (being (state unpeeled) (subject banana))
)
