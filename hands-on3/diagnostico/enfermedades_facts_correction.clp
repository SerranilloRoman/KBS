(deftemplate enfermedad 
    (slot nombre)
    (slot sign1)
    (slot sign2)
    (slot sin1)
    (slot sin2)
)
(deftemplate caso
    (slot sign1)
    (slot sign2)
    (slot sin1)
    (slot sin2)
)

(deffacts enfermedades
    (enfermedad (nombre influenza) (sign1 fiebre)(sign2 escurrimiento_nasal) (sin1 dolor_muscular) (sin2 dolor_de_cabeza))
    (enfermedad (nombre resfriado_comun) (sign1 congestion_nasal) (sign2 estornudos) (sin1 dolor_muscular) (sin2 dolor_de_garganta))
    (enfermedad (nombre colitis) (sign1 inflamacion) (sign2 mal_aliento) (sin1 dolor_abdominal) (sin2 transtornos_gastrointestinales))
    (enfermedad (nombre gastroenteritis) (sign1 fiebre) (sign2 mal_aliento) (sin1 dolor_abdominal) (sin2 vomitos))
    (enfermedad (nombre sinusitis) (sign1 fiebre) (sign2 congestion_nasal) (sin1 dolor_de_cabeza) (sin2 fatiga))
    (enfermedad (nombre faringitis) (sign1 fiebre) (sign2 ruboracion) (sin1 dolor_muscular) (sin2 fatiga))
)

