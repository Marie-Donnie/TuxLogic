/* WARNING if type checker is not performed, translation could contain errors ! */

#include "Machine1.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

#define Machine1__x0 0
#define Machine1__y0 0
#define Machine1__dx 100
#define Machine1__dy 100
/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

static int32_t Machine1__xc;
static int32_t Machine1__yc;
/* Clause INITIALISATION */
void Machine1__INITIALISATION(void)
{
    
    Machine1__xc = Machine1__x0;
    Machine1__yc = Machine1__y0;
}

/* Clause OPERATIONS */

void Machine1__incrX(int32_t px)
{
    Machine1__xc = px+Machine1__xc;
}

void Machine1__incrY(int32_t py)
{
    Machine1__yc = py+Machine1__yc;
}

void Machine1__changeX(int32_t px)
{
    Machine1__xc = px;
}

void Machine1__changeY(int32_t py)
{
    Machine1__yc = py;
}

void Machine1__decrX(int32_t px)
{
    Machine1__xc = Machine1__xc-px;
}

