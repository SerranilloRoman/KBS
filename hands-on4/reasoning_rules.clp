(defrule segmentar-clientes
   (orden-de-compra (cliente-id ?id) (items $?items))
   (or (test (>= (length$ ?items) 3))
       (test (< (length$ ?items) 3)))
   (or (exists (smartphone (id ?))) ; Verifica que el patrón de smartphone sea correcto
       (exists (computadora ?)))
   =>
   (if (exists (smartphone ?)) then
      (printout t "El cliente ID " ?id " es un consumidor de smartphones." crlf)
   else
      (printout t "El cliente ID " ?id " es un consumidor de computadoras." crlf)
   )
)
