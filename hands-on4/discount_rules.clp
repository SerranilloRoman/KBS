(defrule samsung-galaxy-a52-meses-sin-intereses
   (orden-de-compra (items $? ?smartphone $?))
   (smartphone (id ?id) (marca "samsung") (modelo "GalaxyA52") (color ?color) (precio ?precio))
   (tarjeta-de-credito (banco "liverpool") (tipo "visa") (fecha-expiracion ?fecha))
   =>
   (printout t "Oferta: 18 meses sin intereses para Samsung Galaxy A52 con tarjeta Liverpool VISA." crlf))

(defrule huawei-p30-meses-sin-intereses
   (orden-de-compra (items $? ?smartphone $?))
   (smartphone (id ?id) (marca "huawei") (modelo "P30") (color ?color) (precio ?precio))
   (tarjeta-de-credito (banco "banamex") (tipo "visa") (fecha-expiracion ?fecha))
   =>
   (printout t "Oferta: 24 meses sin intereses para Huawei P30 con tarjeta Banamex VISA." crlf))

(defrule google-pixel-bono-descuento
   (orden-de-compra (items $? ?smartphone $?))
   (smartphone (id ?id) (marca "google") (modelo "Pixel") (color ?color) (precio ?precio))
   =>
   (bind ?descuento (/ ?precio 10))
   (printout t "Oferta: $" ?descuento " de descuento para Google Pixel." crlf))

(defrule descuento-funda-mica
   (orden-de-compra (items $? ?smartphone $?))
   (smartphone (id ?id) (marca ?marca) (modelo ?modelo) (color ?color) (precio ?precio))
   =>
   (printout t "Oferta: 15% de descuento en funda y mica para la compra de un smartphone." crlf))

(defrule descuento-tabletas
   (orden-de-compra (items $? ?computadora $?))
   (computadora (id ?id) (marca ?marca) (modelo ?modelo) (color ?color) (precio ?precio))
   =>
   (bind ?descuento (/ ?precio 20))
   (printout t "Oferta: $" ?descuento " de descuento para la compra de una tablet." crlf))

(defrule accesorios-gratis-smartphones
   (orden-de-compra (items $? ?smartphone $?))
   (smartphone (id ?id) (marca ?marca) (modelo ?modelo) (color ?color) (precio ?precio))
   =>
   (printout t "Oferta: Auriculares gratis por la compra de un smartphone." crlf))

(defrule descuento-asus-accesorios
   (orden-de-compra (items $? ?computadora $?))
   (computadora (id ?id) (marca "asus") (modelo ?modelo) (color ?color) (precio ?precio))
   =>
   (bind ?descuento (/ ?precio 15))
   (printout t "Oferta: $" ?descuento " de descuento en accesorios para la compra de una laptop Asus." crlf))

(defrule smartphone-xiaomi-cargador-gratis
   (orden-de-compra (items $? ?smartphone $?))
   (smartphone (id ?id) (marca "xiaomi") (modelo ?modelo) (color ?color) (precio ?precio))
   =>
   (printout t "Oferta: Cargador gratis por la compra de un smartphone Xiaomi." crlf))

(defrule laptop-hp-mochila-gratis
   (orden-de-compra (items $? ?computadora $?))
   (computadora (id ?id) (marca "hp") (modelo ?modelo) (color ?color) (precio ?precio))
   =>
   (printout t "Oferta: Mochila gratis por la compra de una laptop HP." crlf))

(defrule smartphone-oneplus-auriculares-descuento
   (orden-de-compra (items $? ?smartphone $?))
   (smartphone (id ?id) (marca "oneplus") (modelo ?modelo) (color ?color) (precio ?precio))
   =>
   (bind ?descuento (/ ?precio 25))
   (printout t "Oferta: $" ?descuento " de descuento en auriculares por la compra de un smartphone OnePlus." crlf))

(defrule monitor-lg-hdmi-gratis
   (orden-de-compra (items $? ?accesorio $?))
   (accesorio (id ?id) (tipo "monitor") (marca "lg") (precio ?precio))
   =>
   (printout t "Oferta: Cable HDMI gratis por la compra de un monitor LG." crlf))

(defrule laptop-microsoft-software-descuento
   (orden-de-compra (items $? ?computadora $?))
   (computadora (id ?id) (marca "microsoft") (modelo ?modelo) (color ?color) (precio ?precio))
   =>
   (bind ?descuento (/ ?precio 2))
   (printout t "Oferta: 50% de descuento en software Office por la compra de una laptop Microsoft." crlf))

(defrule tarjeta-liverpool-meses-sin-intereses
   (orden-de-compra (items $? ?tarjeta $?))
   (tarjeta-de-credito (id ?id) (banco "liverpool") (tipo "visa") (fecha-expiracion ?fecha))
   =>
   (printout t "Oferta: 12 meses sin intereses con tarjeta Liverpool." crlf))

(defrule descuento-pixel-accesorios
   (orden-de-compra (items $? ?smartphone $?))
   (smartphone (id ?id) (marca "google") (modelo "Pixel") (color ?color) (precio ?precio))
   =>
   (printout t "Oferta: 10% de descuento en accesorios para la compra de un Google Pixel." crlf))

(defrule laptop-lenovo-mouse-gratis
   (orden-de-compra (items $? ?computadora $?))
   (computadora (id ?id) (marca "lenovo") (modelo ?modelo) (color ?color) (precio ?precio))
   =>
   (printout t "Oferta: Mouse gratis por la compra de una laptop Lenovo." crlf))

(defrule smartphone-oppo-funda-gratis
   (orden-de-compra (items $? ?smartphone $?))
   (smartphone (id ?id) (marca "oppo") (modelo ?modelo) (color ?color) (precio ?precio))
   =>
   (printout t "Oferta: Funda gratis por la compra de un smartphone Oppo." crlf))

(defrule laptop-dell-teclado-descuento
   (orden-de-compra (items $? ?computadora $?))
   (computadora (id ?id) (marca "dell") (modelo ?modelo) (color ?color) (precio ?precio))
   =>
   (bind ?descuento (/ ?precio 5))
   (printout t "Oferta: $" ?descuento " de descuento en teclado por la compra de una laptop Dell." crlf))

(defrule smartphone-apple-antivirus
   (orden-de-compra (items $? ?smartphone $?))
   (smartphone (id ?id) (marca "apple") (modelo ?modelo) (color ?color) (precio ?precio))
   =>
   (printout t "Oferta: Antivirus gratuito por la compra de cualquier iPhone." crlf))

(defrule tarjeta-bbva-descuento-compras
   (orden-de-compra (items $? ?tarjeta $?))
   (tarjeta-de-credito (id ?id) (banco "bbva") (tipo "mastercard") (fecha-expiracion ?fecha))
   =>
   (printout t "Oferta: Descuento del 10% en todas las compras con tarjeta BBVA Mastercard." crlf))

