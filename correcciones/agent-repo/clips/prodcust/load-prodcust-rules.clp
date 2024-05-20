
;; Defining a rule for finding customer names and printing such names
(defrule find-customer-names
   (customer (name ?n)) => (printout t "Customer name found: " ?n crlf))

;; Defining a rule for finding a customer's data via their customer-id
;; you can replace the customer-id 101 with either 102 or 103 (see deffacts customers)
(defrule my-rule12
   ?c <- (customer (customer-id 101) (name ?name) (address ?address))
   =>
   (printout t "customer-id 101 belongs to:: " ?name " with address:: " ?address crlf))

;;Defining a rule for finding "electronic products"
(defrule find-electronic-products
   (product (category electronics) (name ?name))
   =>
   (printout t "Electronic product found: " ?name crlf))

;; Defining a rule for finding smartphones cheaper than 50 dlls
;; note the use of NOT, if Jess does not find a match for a given pattern then the rule returns a FALSE
;; however you can use NOT for making the rule to return true
(defrule find-cheap-smartphones-less-than-50
   (product (category smartphone) (price ?p&:(< ?p 50)) (name ?n))
   =>
   (printout t "Smartphone " ?n " is cheaper than 50 dlls" crlf))

;; Defining a rule for finding smartphones cheaper than 100 dlls
(defrule find-cheap-smartphones-less-than-100
   (product (category smartphone) (price ?p&:(< ?p 100)) (name ?n))
   =>
   (printout t "Smartphone " ?n " is cheaper than 100 dlls" crlf))
