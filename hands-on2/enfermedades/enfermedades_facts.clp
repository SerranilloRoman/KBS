(deftemplate enfermedad
    (slot id (type INTEGER))
    (slot nombre)
    (multislot signos)
    (multislot sintomas)
)

;; Definición de enfermedades
(deffacts enfermedades
    (enfermedad (id 1) (nombre influenza) (signos fiebre escurrimiento_nasal) (sintomas dolor_muscular dolor_de_cabeza))
    (enfermedad (id 2) (nombre resfriado_comun) (signos congestion_nasal estornudos) (sintomas dolor_muscular dolor_de_garganta))
    (enfermedad (id 3) (nombre colitis) (signos inlfamacion mal_aliento) (sintomas dolor_abdominal trastornos_gastrointestinales))
    (enfermedad (id 4) (nombre gastroenteritis) (signos fiebre mal_aliento) (sintomas dolor_abdominal vomitos))
    (enfermedad (id 5) (nombre sinusitis) (signos fiebre congestion_nasal) (sintomas dolor_de_cabeza fatiga))
    (enfermedad (id 6) (nombre faringitis) (signos fiebre ruboracion) (sintomas dolor_muscular fatiga))
)

