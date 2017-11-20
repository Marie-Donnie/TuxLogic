/* Machine1
 * Author: monta & marie
 * Creation date: 09/11/2017
 */
MACHINE
    Machine1
    
CONSTANTS
    x0
    ,y0
    ,dx
    ,dy

PROPERTIES
    x0 : NAT
    & y0 : NAT
    & dx : NAT
    & dy : NAT
    & x0+dx < MAXINT
    & y0 +dy < MAXINT
    & dx > 0
    & dy > 0
    
VARIABLES
    xc //les variables courantes
    ,yc

INVARIANT
    xc : NAT
    & yc : NAT
    & x0 <= xc & xc<= x0 + dx
    & y0 <=yc & yc <= y0 + dy
    
INITIALISATION
    xc := x0
    || yc := y0
    
    
OPERATIONS
    // Incrémentation de X
    incrX(px) =
    PRE
        px : NAT & px <=dx
        & xc+px <= x0 +dx
    
    THEN
        xc := px +xc
    END
    
    ;
    
    // Incrémentation de Y
    incrY(py) =
    PRE
        py : NAT & py <=dy
        & yc+py <= y0 +dy
    
    THEN
        yc := py +yc
    END
    
    ;
    
    // Changement valeur de x
    changeX(px)=
    PRE
        px : NAT & px <=dx+x0 & px >= x0
    THEN
        xc := px
    END
    
    ;
    
    // Changement valeur de y
    changeY(py)=
    PRE
        py : NAT & py <=dy+y0 & py >= y0
    THEN
        yc := py
    END
    
    ;
    
    // Décrémentation de X
   decrX(px) =
    PRE
        px : NAT & px <=dx
        & xc-px >= x0
    
    THEN
        xc := xc - px
    END
    
    
    


END
