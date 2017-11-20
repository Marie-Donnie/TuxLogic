/* m1
 * Author: 
 * Creation date: 15/11/17
 */
MACHINE
    m1
    
SETS
    STATUS = { actif, inactif }
    
DEFINITIONS
    PROC == NAT 
    
VARIABLES
    procEtat
    , proc
    
INVARIANT
    proc <: PROC
    & procEtat : proc --> STATUS
    
INITIALISATION
    proc := {}
    || procEtat := {}
    
OPERATIONS
    rr <-- creerP(pp) =
    PRE
        pp : PROC & pp /: proc & pp /: dom(procEtat)
    THEN
        proc := proc \/ {pp}
        || procEtat(pp) := inactif
        || rr := pp
    END
    ;
    
    activerP(pp) =
    PRE
        pp : PROC & pp : proc & pp : dom(procEtat) & procEtat(pp) = inactif
    THEN 
        procEtat(pp) := actif
    END       
    ;
    
    desactiverP(pp) =
    PRE
        pp : PROC & pp : proc & pp : dom(procEtat) & procEtat(pp) = actif
    THEN
        procEtat(pp) := inactif
        
    END
    ;

    detruireP(pp) =
    PRE
        pp : PROC & pp : proc 
        
        THEN    
        proc := proc - {pp}
        || procEtat := {pp} <<| procEtat
    END    
    
    
END
