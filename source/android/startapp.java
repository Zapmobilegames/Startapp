/*
java implementation of the startapp extension.

Add android-specific functionality here.

These functions are called via JNI from native code.
*/
/*
* NOTE: This file was originally written by the extension builder, but will not
* be overwritten (unless --force is specified) and is intended to be modified.
*/
import com.ideaworks3d.marmalade.LoaderAPI;
import com.ideaworks3d.marmalade.LoaderActivity;   

import android.content.*;
import com.startapp.android.eula.model.*;
import com.searchboxsdk.android.a.*;
import android.app.*;
import com.startapp.android.eula.*;

import android.util.Log;
import com.startapp.android.publish.*;
import com.startapp.android.publish.model.*;
import com.searchboxsdk.android.*;
import com.searchboxsdk.android.StartAppSearch.*;
import java.util.*;


class startapp 
{
	private com.startapp.android.publish.StartAppAd startAppAd = null;	
	
	// @SuppressWarnings("deprecation")
    public int initSDK(final String dev_id, final String app_id)
    {
	     Log.d("Startapp", "////// Startapp initSDK starting... //////");
	     Context localContext1 = LoaderAPI.getActivity();
	     Activity activity_context = (Activity) localContext1;
	     // com.searchboxsdk.android.StartAppSearch.init(localContext1);
	     com.searchboxsdk.android.StartAppSearch.init(activity_context);
	     
	     com.startapp.android.publish.model.AdPreferences adPreferences = new AdPreferences(dev_id, app_id);
	     startAppAd = new StartAppAd(localContext1); 
	     startAppAd.load();
	     
	     return 0;
    }
    
    public int Show_Ad() {
    	if(startAppAd != null) {
    		Log.d("Startapp", "////// SHOW AD... //////");
    		startAppAd.showAd(); // show the ad
    		startAppAd.loadAd(); // load the next ad
    		return 0;
    	}
    	else Log.d("Startapp", "////// CANNOT SHOW AD //////");
    	return 1;
    }
    
    public int Show_SearchBox(boolean show) {
//    	if(show == true) {
//    		Log.d("Startapp", "////// SHOW SEARCHBOX //////");
////    		Context localContext1 = LoaderAPI.getActivity();
////    		Activity activity_context = (Activity) localContext1;
//    		com.searchboxsdk.android.StartAppSearch.showSearchBox(LoaderActivity.m_Activity);
//    		return 0;
//    	}
//    	else {
//    		Log.d("Startapp", "////// DONT SHOW SEARCHBOX //////");
//    		return 1;
//    	}
    	return 1; // Ritorno con error perchè ho commentato tutto (poi magari lo tolgo quando fungerà)
    }
    
}