#ifndef _Machine1_h
#define _Machine1_h

#include <stdint.h>
#include <stdbool.h>
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */

/* Clause CONCRETE_VARIABLES */


/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
#define Machine1__x0 0
#define Machine1__y0 0
#define Machine1__dx 100
#define Machine1__dy 100
/* Array and record constants */




extern void Machine1__INITIALISATION(void);

/* Clause OPERATIONS */

extern void Machine1__incrX(int32_t px);
extern void Machine1__incrY(int32_t py);
extern void Machine1__changeX(int32_t px);
extern void Machine1__changeY(int32_t py);
extern void Machine1__decrX(int32_t px);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _Machine1_h */
