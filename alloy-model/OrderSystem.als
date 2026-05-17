sig Customer {}

sig Product {}

sig Order {
    customer : one Customer,
    product  : one Product
}

sig CreatedOrder in Order {}
sig PaidOrder in Order {}
sig ReservedOrder in Order {}
sig ShippedOrder in Order {}
sig CancelledOrder in Order {}

---------------------------------------------------
-- WEAKENED MODEL (to allow Alloy exploration)
---------------------------------------------------

fact StateFlowRelaxed {
    PaidOrder in CreatedOrder
    ReservedOrder in Order  -- relaxed (allows exploration)
    ShippedOrder in Order   -- relaxed
}

fact NoCancelledAndShipped {
    no (CancelledOrder & ShippedOrder)
}

---------------------------------------------------
-- ASSERTION (INTENTIONAL CHECK FOR COUNTEREXAMPLE)
---------------------------------------------------

assert PaymentBeforeShipping {
    all o : ShippedOrder | o in PaidOrder
}

check PaymentBeforeShipping for 5

---------------------------------------------------

assert ReservationBeforeShipping {
    all o : ShippedOrder | o in ReservedOrder
}

check ReservationBeforeShipping for 5
