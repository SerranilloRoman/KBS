(deftemplate cliente
   (slot id)
   (slot nombre)
   (slot tipo)
)

(deftemplate orden-de-compra
   (slot cliente-id)
   (multislot items) ; Lista de identificadores de items
)

(deftemplate tarjeta-de-credito
   (slot id)
   (slot banco)
   (slot tipo)
   (slot fecha-expiracion)
)

(deftemplate vale
   (slot id)
   (slot valor)
)

(deftemplate smartphone
   (slot id)
   (slot marca)
   (slot modelo)
   (slot color)
   (slot precio))

(deftemplate computadora
   (slot id)
   (slot marca)
   (slot modelo)
   (slot color)
   (slot precio))

(deftemplate accesorio
   (slot id)
   (slot tipo)
   (slot marca)
   (slot precio))


(deffacts clientes
   (cliente (id 1) (nombre "Juan Perez") (tipo mayorista))
   (cliente (id 2) (nombre "Jose Hernandez") (tipo minorista))
   (cliente (id 3) (nombre "Jesus Ojeda") (tipo minorista))   
   (cliente (id 4) (nombre "Hermenegildo Galeana") (tipo minorista))   
)

(deffacts tarjetas
   (tarjeta-de-credito (id 1) (banco "banamex") (tipo "visa") (fecha-expiracion "2027-12-01"))
   (tarjeta-de-credito (id 2) (banco "liverpool") (tipo "mastercard") (fecha-expiracion "2025-12-01"))
   (tarjeta-de-credito (id 3) (banco "bbva") (tipo "visa") (fecha-expiracion "2029-12-01"))
   (tarjeta-de-credito (id 4) (banco "santander") (tipo "visa") (fecha-expiracion "2030-12-01")))

(deffacts vales
   (vale (id 1) (valor 100))
   (vale (id 2) (valor 200))
   (vale (id 3) (valor 300))
   (vale (id 4) (valor 400)))

(deffacts smartphones
   (smartphone (id 1) (marca "apple") (modelo "iPhone15") (color "rojo") (precio 17000))
   (smartphone (id 2) (marca "samsung") (modelo "Note12") (color "negro") (precio 15000))
   (smartphone (id 3) (marca "google") (modelo "Pixel6") (color "blanco") (precio 12000))
   (smartphone (id 4) (marca "huawei") (modelo "P40") (color "azul") (precio 11000))
   (smartphone (id 5) (marca "xiaomi") (modelo "Mi11") (color "negro") (precio 13000))
   (smartphone (id 6) (marca "apple") (modelo "iPhone14") (color "blanco") (precio 16000))
   (smartphone (id 7) (marca "samsung") (modelo "GalaxyS21") (color "azul") (precio 14000))
   (smartphone (id 8) (marca "oneplus") (modelo "9Pro") (color "gris") (precio 14000)))

(deffacts computadoras
   (computadora (id 1) (marca "apple") (modelo "MacBookAir") (color "gris") (precio 25000))
   (computadora (id 2) (marca "dell") (modelo "XPS15") (color "negro") (precio 22000))
   (computadora (id 3) (marca "hp") (modelo "SpectreX360") (color "plateado") (precio 21000))
   (computadora (id 4) (marca "lenovo") (modelo "ThinkPadX1") (color "negro") (precio 20000))
   (computadora (id 5) (marca "microsoft") (modelo "SurfaceLaptop4") (color "azul") (precio 23000))
)

(deffacts accesorios
   (accesorio (id 1) (tipo "funda") (marca "generico") (precio 300))
   (accesorio (id 2) (tipo "mica") (marca "generico") (precio 120))
   (accesorio (id 3) (tipo "raton") (marca "logitech") (precio 420))
   (accesorio (id 4) (tipo "auriculares") (marca "skull_candy") (precio 870))
   (accesorio (id 5) (tipo "teclado") (marca "logitech") (precio 750))  
   (accesorio (id 6) (tipo "monitor") (marca "samsung") (precio 2000))
   (accesorio (id 7) (tipo "cargador") (marca "generico") (precio 600))
) 

(deffacts ordenes-de-compra
   (orden-de-compra 
      (cliente-id 1) 
      (items 1 1)) ; Lista de IDs de items
   (orden-de-compra 
      (cliente-id 2) 
      (items 2 2)) ; Lista de IDs de items
   (orden-de-compra 
      (cliente-id 1) 
      (items 1 1 1))) ; Lista de IDs de items
