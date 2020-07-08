(define (problem n-puzzle)
	(:domain n-puzzle)
	(:objects t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16)
	(:init 
        (tile t1) (tile t2) (tile t3) (tile t4) (tile t5) (tile t6) (tile t7) (tile t8)
        (tile t9) (tile t10)(tile t11)(tile t12)(tile t13)(tile t14)(tile t15)
        (position p1)(position p2) (position p3) (position p4) (position p5) (position p6) (position p7) (position p8)
        (position p9)(position p10)(position p11)(position p12)(position p13)(position p14)(position p15)(position p16)
                
        ;;The tiles positions
        (at t15 p1) (at t2 p2)   (at t1 p3)   (at t12 p4)
        (at t8 p5)  (at t5 p6)   (at t6 p7)   (at t11 p8)
        (at t4 p9)  (at t9 p10)  (at t10 p11) (at t7 p12)
        (at t3 p13) (at t13 p14) (at t14 p15) (blank p16)
                
        ;;valid moves
        (valid-left p16 p15) (valid-left p15 p14) (valid-left p14 p13)
        (valid-left p12 p11) (valid-left p11 p10) (valid-left p10 p9)
        (valid-left p8 p7)   (valid-left p7 p6)   (valid-left p6 p5)
        (valid-left p4 p3)   (valid-left p3 p2)   (valid-left p2 p1)
        
        (valid-right p1 p2)  (valid-right p2 p3)  (valid-right p3 p4)
        (valid-right p5 p6)  (valid-right p6 p7)  (valid-right p7 p8)
        (valid-right p9 p10) (valid-right p10 p11)(valid-right p11 p12)
        (valid-right p13 p14)(valid-right p14 p15)(valid-right p15 p16)
        
        (valid-down p1 p5)   (valid-down p2 p6)   (valid-down p3 p7)   (valid-down p4 p8)
        (valid-down p5 p9)   (valid-down p6 p10)  (valid-down p7 p11)  (valid-down p8 p12)
        (valid-down p9 p13)  (valid-down p10 p14) (valid-down p11 p15) (valid-down p12 p16)
        
        (valid-up p16 p12)   (valid-up p15 p11)   (valid-up p14 p10)   (valid-up p13 p9)
        (valid-up p12 p8)    (valid-up p11 p7)    (valid-up p10 p6)    (valid-up p9 p5) 
        (valid-up p8 p4)     (valid-up p7 p3)     (valid-up p6 p2)     (valid-up p5 p1) 
        
	)
	
	(:goal (and
        (at t1 p1)   (at t2 p2)   (at t3 p3)   (at t4 p4)
        (at t5 p5)   (at t6 p6)   (at t7 p7)   (at t8 p8)
        (at t9 p9)   (at t10 p10) (at t11 p11) (at t12 p12)
        (at t13 p13) (at t14 p14) (at t15 p15) (blank p16))
    )


)