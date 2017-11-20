/* m2
 * Author: 
 * Creation date: 15/11/17
 */
MACHINE
    m2
    
SETS 
    SUJET
    ; COMMENTAIRE

DEFINITIONS
    IDS == NAT
   
VARIABLES
    canalsuj
    , canalcom
    , idsuj
    , idcom
    
INVARIANT
    canalsuj : IDS <-> SUJET
    & canalcom : IDC >+> IDS
    & etat : STATUS
    & proc <: PROC
    & suj <: IDS
    & com <: IDC
    
INITIALISATION
    canalsuj := {}
    || canalcom := {}
    || proc := {}
    || idsuj := {}
    || idcom := {}
    || etat := inactif
    

END


END
