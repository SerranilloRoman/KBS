
(defrule monkey-moves-to-desk
    (being (state lifted)(subject chair))
    (isOn (subject desk) (location floor))
    (isOn (subject monkey) (location floor))
    (has (subject1 monkey)(subject2 chair))
    (isNear (subject1 desk)(subject2 banana))
    =>
    (assert (isNear (subject1 monkey)(subject2 desk)))
)

(defrule monkey-places-chair-on-desk  
    (being (state lifted)(subject chair))
    (isOn (subject desk) (location floor))
    (isOn (subject monkey) (location floor))
    (isNear (subject1 monkey)(subject2 desk))
    (has (subject1 monkey)(subject2 chair))
    (isNear (subject1 desk)(subject2 banana))
    ?blc <- (being (state lifted)(subject chair))
    ?hmc <- (has (subject1 monkey)(subject2 chair))
    =>
    (retract ?blc)
    (retract ?hmc)
    (assert (isOn (subject chair) (location desk)))
    
)

(defrule monkey-climbs-desk
    (isOn (subject desk) (location floor))
    (isOn (subject chair) (location desk))
    (isOn (subject monkey) (location floor))
    (isNear (subject1 desk)(subject2 banana))
    (not (has (subject1 monkey)(subject2 chair)))
    ?omf <- (isOn (subject monkey) (location floor))
    =>
    (retract ?omf)
    (assert (isOn (subject monkey) (location desk)))
)

(defrule monkey-climbs-chair
    (isOn (subject desk) (location floor))
    (isOn (subject chair) (location desk))
    (isOn (subject monkey) (location desk))
    (isNear (subject1 desk)(subject2 banana))
    ?omd <- (isOn (subject monkey) (location desk))
    =>
    (retract ?omd)
    (assert (isOn (subject monkey) (location chair)))
)

(defrule monkey-grabs-banana  
    (isOn (subject desk) (location floor))
    (isOn (subject chair) (location desk))
    (isOn (subject monkey) (location chair))
    (isOn (subject banana) (location ceiling))
    (isNear (subject1 desk)(subject2 banana))
    ?obc <- (isOn (subject banana) (location ceiling))
    =>
    (assert (being (state grabed)(subject banana)))
    (assert (has (subject1 monkey)(subject2 banana)))
    (retract ?obc)

)

(defrule monkey-peels-banana
    (being (state grabed)(subject banana))
    (has (subject1 monkey)(subject2 banana))
    (being (state unpeeled) (subject banana))
    (isNear (subject1 desk)(subject2 banana))
    ?bub <- (being (state unpeeled) (subject banana))
    =>
    (retract ?bub)
    (assert (being (state peeled) (subject banana)))
)

(defrule monkey-eats-banana
    (has (subject1 monkey)(subject2 banana))
    (being (state peeled) (subject banana))
    (isNear (subject1 desk)(subject2 banana))
    ?bhm <- (being (state hungry) (subject monkey))
    ?bsb <- (being (state peeled) (subject banana))
    ?hmb <- (has (subject1 monkey)(subject2 banana))
    ?ndb <- (isNear (subject1 desk)(subject2 banana))
    ?bgb <- (being (state grabed)(subject banana))
    =>
    (retract ?bhm)
    (assert (being (state happy) (subject monkey)))
    (retract ?bsb)
    (retract ?hmb)
    (retract ?ndb)
    (retract ?bgb)
)

;; Reglas de produccion
(defrule monkey-goes-for-desk-
    (being (state hungry) (subject monkey))
    (isOn (subject chair) (location floor))
    (isOn (subject desk) (location floor))
    (isOn (subject monkey) (location floor)) 
    (isOn (subject banana) (location ceiling))
    =>
    (assert (isNear (subject1 monkey)(subject2 desk)))
)

(defrule monkey-grabs-desk
    (isNear (subject1 monkey)(subject2 desk))
    (not (has (subject1 monkey)(subject2 desk)))
    (not (isNear (subject1 desk) (subject2 banana)))
    (isOn (subject banana) (location ceiling))
    =>
    (assert (has (subject1 monkey)(subject2 desk)))
)

(defrule monkey-moves-desk
    (has (subject1 monkey)(subject2 desk))
    (isOn (subject banana) (location ceiling))
    ?hmk <- (has (subject1 monkey)(subject2 desk))
    =>
    (assert (isNear (subject1 desk)(subject2 banana)))
    (retract ?hmk)
)

(defrule monkey-moves-to-chair
    (isOn (subject chair) (location floor))
    (isOn (subject desk) (location floor))
    (isOn (subject monkey) (location floor)) 
    (isOn (subject banana) (location ceiling))
    (isNear (subject1 desk)(subject2 banana))
    (isNear (subject1 monkey)(subject2 desk))
    ?nmd <- (isNear (subject1 monkey)(subject2 desk))
    => 
    (retract ?nmd)
    (assert (isNear (subject1 monkey)(subject2 chair)))
)

(defrule monkey-lifts-chair
    (isOn (subject chair) (location floor))
    (isOn (subject desk) (location floor))
    (isOn (subject monkey) (location floor)) 
    (isOn (subject banana) (location ceiling))
    (isNear (subject1 monkey)(subject2 chair))
    ?ocf <- (isOn (subject chair) (location floor))
    =>
    (assert (being (state lifted)(subject chair)))
    (assert (has (subject1 monkey)(subject2 chair)))
    (retract ?ocf)
)

;; Usar (watch rules) para ver el proceso del mono

