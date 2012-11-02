/*
Generic implementation of the startapp extension.
This file should perform any platform-indepedentent functionality
(e.g. error checking) before calling platform-dependent implementations.
*/

/*
 * NOTE: This file was originally written by the extension builder, but will not
 * be overwritten (unless --force is specified) and is intended to be modified.
 */


#include "startapp_internal.h"
s3eResult startappInit()
{
    //Add any generic initialisation code here
    return startappInit_platform();
}

void startappTerminate()
{
    //Add any generic termination code here
    startappTerminate_platform();
}

s3eResult initSDK()
{
	return initSDK_platform();
}
