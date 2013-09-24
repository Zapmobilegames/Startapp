/*
* This file is part of the Marmalade SDK Code Samples.
*
* Copyright (C) 2001-2012 Ideaworks3D Ltd.
* All Rights Reserved.
*
* This source code is intended only as a supplement to Ideaworks Labs
* Development Tools and/or on-line documentation.
*
* THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY
* KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
* IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A
* PARTICULAR PURPOSE.
*/

/**
* @page ExampleS3EHelloWorld S3E Hello World Example
*
* The following example, in typical Hello World style, displays the phrase
* "Hello, World!" on screen.
*
* The functions required to achieve this are:
* Printing the text to screen:
* - s3eDebugPrint()
*
* Handling the text:
* - s3eDeviceCheckQuitRequest()
* - s3eSurfaceClear()
* - s3eSurfaceShow()
*
* All examples will follow this basic pattern; a brief description of what
* the example does will be given followed by a list of all the important
* functions and, perhaps, classes.
*
* Should the example be more complex, a more detailed explanation of what the
* example does and how it does it will be added. Note that most examples
* use an example framework to remove boilerplate code and allow the projects
* to be made up of a single source file for easy viewing. This framework can
* be found in the examples/s3e/ExamplesMain directory.
*
* @include s3eHelloWorld.cpp
*/
#include "s3e.h"
#include "startapp.h"
#include "IwUI.h"

CIwUIButton* s_Button = NULL;
int s_ClickCounter = 0;

#define STARTAPP_DEVID "987550902"
#define STARTAPP_APPID "201407070"

//-----------------------------------------------------------------------------
class MyButtonEventHandler : public CIwUIElementEventHandler
{
public:
    //HandleEvent is passed up the element hierarchy
    virtual bool HandleEvent(CIwEvent* pEvent)
    {
        if (pEvent->GetID() == IWUI_EVENT_BUTTON)
        {

			if(startappAvailable())
			{
				Show_Ad();
			}

            //return true, as event has been handled
            return true;
        }

        return false;
    }

    //FilterEvent is passed down the element hierarchy
    virtual bool FilterEvent(CIwEvent* pEvent)
    {
        //return false, since filtering is not necessary
        return false;
    }
};

//-----------------------------------------------------------------------------
void ExampleInit()
{
    // Startapp:
	if (s3eDeviceGetInt(S3E_DEVICE_OS) == S3E_OS_ID_ANDROID)
	{
		if(startappAvailable())
		{
			initSDK(STARTAPP_DEVID, STARTAPP_APPID); 
		}
	}
	
	//Initialise the IwUI module
    IwUIInit();

    //Instantiate the view and controller singletons.
    //IwUI will not instantiate these itself, since they can be subclassed to add functionality.
    new CIwUIController;
    new CIwUIView;

    //Load group which contains the ui specifications
    IwGetResManager()->LoadGroup("IwUIBasicButtonEvents.group");

    //Load button
    s_Button = (CIwUIButton*) CIwUIElement::CreateFromResource("EventButton");

    //Attach eventhandler to button
    s_Button->AddEventHandler(new MyButtonEventHandler);

    //Add the label to the UIView singleton
    IwGetUIView()->AddElement(s_Button);
}
//-----------------------------------------------------------------------------
void ExampleShutDown()
{
    delete IwGetUIController();
    delete IwGetUIView();

    //Terminate the IwUI module
    IwUITerminate();
}
//-----------------------------------------------------------------------------
bool ExampleUpdate()
{
    //Update the controller (this will generate control events etc.)
    IwGetUIController()->Update();

    //Update the view (this will do animations etc.) The example framework has
    //a fixed framerate of 20fps, so we pass that duration to the update function.
    IwGetUIView()->Update(1000/20);

    return true;
}
//-----------------------------------------------------------------------------
void ExampleRender()
{
    //Render the UI
    IwGetUIView()->Render();

    //Flush IwGx
    IwGxFlush();

    //Display the rendered frame
    IwGxSwapBuffers();
}