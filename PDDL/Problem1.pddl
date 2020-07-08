(define (problem n-puzzle)
	(:domain n-puzzle)
	(:objects t1 t2 t3 t4 t5 t6 t7 t8 p1 p2 p3 p4 p5 p6 p7 p8 p9)
	(:init 
        (tile t1) (tile t2) (tile t3) (tile t4) (tile t5) (tile t6) (tile t7)(tile t8)
        (position p1)(position p2)(position p3)(position p4) (position p5)(position p6)(position p7)(position p8)(position p9)
                
        ;;The tiles positions
        (at t2 p1) (at t6 p2) (at t1 p3)
        (blank p4) (at t7 p5) (at t8 p6)
        (at t3 p7) (at t5 p8) (at t4 p9)
                
        ;;valid moves
        (valid-left p9 p8) (valid-left p8 p7) (valid-left p6 p5) (valid-left p5 p4) (valid-left p3 p2) (valid-left p2 p1)
        (valid-right p1 p2)(valid-right p2 p3)(valid-right p4 p5)(valid-right p5 p6)(valid-right p7 p8)(valid-right p8 p9)
        (valid-down p1 p4) (valid-down p2 p5) (valid-down p3 p6) (valid-down p4 p7) (valid-down p5 p8) (valid-down p6 p9)
        (valid-up p9 p6)   (valid-up p8 p5)   (valid-up p7 p4)   (valid-up p6 p3)   (valid-up p5 p2)   (valid-up p4 p1)
	)
	
	(:goal (and
        (at t1 p1) (at t2 p2) (at t3 p3)
        (at t4 p4) (at t5 p5) (at t6 p6)
        (at t7 p7) (at t8 p8) (blank p9))
    )
)