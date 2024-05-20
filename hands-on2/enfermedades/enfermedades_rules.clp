;; Reglas para consultar enfermedades, signos y síntomas
(defrule consultar-enfermedad
    (not (enfermedad (id ?)))
    =>
    (printout t "No hay información sobre esa enfermedad." crlf)
)
;;todas
(defrule consultar-enfermedad-existente
    (enfermedad (id ?id) (nombre ?nombre) (signos $?signos) (sintomas $?sintomas))
    =>
    (printout t "Enfermedad encontrada:" crlf)
    (printout t "ID: " ?id crlf)
    (printout t "Nombre: " ?nombre crlf)
    (printout t "Signos: " ?signos crlf)
    (printout t "Síntomas: " ?sintomas crlf)
)
;; 1 en 1
(defrule consultar-enfermedad-id-5
    (enfermedad (id 5) ; Agregar esta condición para el ID 5
                (nombre ?nombre) 
                (signos $?signos) 
                (sintomas $?sintomas))
    =>
    (printout t "Enfermedad encontrada:" crlf)
    (printout t "ID: 5" crlf) ; Especificar el ID 5
    (printout t "Nombre: " ?nombre crlf)
    (printout t "Signos: " ?signos crlf)
    (printout t "Síntomas: " ?sintomas crlf)
)

(defrule consultar-signos-sintomas
    (enfermedad (id ?) (nombre ?nombre) (signos $?signos) (sintomas $?sintomas))
    =>
    (printout t "Signos de " ?nombre ": " ?signos crlf)
    (printout t "Síntomas de " ?nombre ": " ?sintomas crlf)
)

;; 1 en 1
(defrule consultar-signos-sintomas-id-5
    (enfermedad (id 5) ; Agregar esta condición para el ID 5
                (nombre ?nombre) 
                (signos $?signos) 
                (sintomas $?sintomas))
    =>
    (printout t "Signos de " ?nombre ": " ?signos crlf)
    (printout t "Síntomas de " ?nombre ": " ?sintomas crlf)
)

;; Regla para eliminar enfermedades por identificador
(defrule eliminar-enfermedad
    ?fact <- (enfermedad (id ?id))
    =>
    (printout t "Eliminando enfermedad con ID: " ?id crlf)
    (retract ?fact)
)

;; 1 en 1
(defrule eliminar-enfermedad-id-6
    ?fact <- (enfermedad (id 6)) ; Agregar esta condición para el ID 5
    =>
    (printout t "Eliminando enfermedad con ID: 6" crlf) ; Especificar el ID 5
    (retract ?fact)
)