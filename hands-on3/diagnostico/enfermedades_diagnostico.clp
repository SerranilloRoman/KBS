(defrule diagnosticar-enfermedad
    ?c <- (caso (sign1 ?sign1) (sign2 ?sign2) (sin1 ?sin1) (sin2 ?sin2))
    (or 
        (and 
            (enfermedad (nombre ?nombre) (sign1 ?sign1) (sign2 ?sign2) (sin1 ?sin1) (sin2 ?sin2))
        )
        (and 
            (enfermedad (nombre ?nombre) (sign1 ?sign1) (sign2 ?sign2) (sin1 ?sin2) (sin2 ?sin1))
        )
        (and 
            (enfermedad (nombre ?nombre) (sign1 ?sign2) (sign2 ?sign1) (sin1 ?sin1) (sin2 ?sin2))
        )
        (and 
            (enfermedad (nombre ?nombre) (sign1 ?sign2) (sign2 ?sign1) (sin1 ?sin2) (sin2 ?sin1))
        )
    )
    =>
    (printout t "El caso coincide con: " ?nombre crlf)
)





;;(defrule identificar-enfermedad
;;    (cuadro sign1 ?sign1 sign2 ?sign2 sin1 ?sin1 sin2 ?sin2)
;;    (enfermedad (nombre ?nombre) (sign1 $?enf-signos) (sintomas $?enf-sintomas))
;;    (test (or (and (member$ ?sin1 ?enf-signos) (member$ ?sin2 ?enf-sintomas))
;;              (and (member$ ?sin2 ?enf-signos) (member$ ?sin1 ?enf-sintomas))
;;              (and (member$ ?sign1 ?enf-signos) (member$ ?sign2 ?enf-sintomas))
;;              (and (member$ ?sign2 ?enf-signos) (member$ ?sign1 ?enf-sintomas))))
;;    =>
;;    (printout t "El paciente tiene la enfermedad: " ?nombre crlf)
;;)



