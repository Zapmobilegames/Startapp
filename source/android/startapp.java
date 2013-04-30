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
import com.apperhand.device.android.AndroidSDKProvider;
import android.app.AlarmManager;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.IntentService;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ServiceInfo;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.provider.Settings.Secure;
import android.util.Log;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.apperhand.common.dto.ApplicationDetails;
import com.apperhand.common.dto.Command;
import com.apperhand.common.dto.Command.Commands;
import com.apperhand.device.a.e.c.a;

import java.net.URLEncoder;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

class startapp
{
    public int initSDK()
    {
     Log.d("Startapp", "////// Startapp initSDK starting... //////");
     Context localContext1 = LoaderAPI.getActivity();
     com.apperhand.device.android.AndroidSDKProvider.initSDK(localContext1);
        return 0;
    }
}