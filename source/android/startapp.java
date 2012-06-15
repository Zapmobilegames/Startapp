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
import android.util.Log;
import android.app.AlarmManager;
import android.app.IntentService;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.Log;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.apperhand.common.dto.ApplicationDetails;
import com.apperhand.device.a.d.c.a;
import java.net.URLEncoder;
import java.util.Locale;

class startapp 
{	
	private String a;
	private String b;
	private String c;
	private String d;
	private com.apperhand.device.a.d.c e;
	private com.apperhand.device.a.c.a f;
	private com.apperhand.device.android.a.a g;
	private com.apperhand.device.android.a.b h;
	private com.apperhand.device.android.a.d i;
	private com.apperhand.device.android.a.e j;
	private com.apperhand.device.android.a.c k;
	
    public int initSDK(String DEVID, String APPID)
    {
    	Context localContext1 = LoaderAPI.getActivity(); 
//    	if (Build.VERSION.SDK_INT < 7) return 0; // TODO: Don't know why, Build is unknown. To be investigated...
    	Context localContext2 = localContext1; 
    	String str4 = null;
    	int l;
    	str4 = DEVID;
    	if (str4 == null) Log.e("STARTAPP", "Cannot find developer id"); 
    	String str1 = str4; localContext2 = localContext1; str4 = null; 
    	str4 = APPID;
    	if (str4 == null) Log.e("STARTAPP", "Cannot find application id"); 
    	String str2 = str4; 
    	if ((str1 == null) || (str2 == null)) return 0; 
    	if (localContext1.getSharedPreferences("com.apperhand.global", 0).getBoolean("TERMINATE", false)) return 0; 
    	Intent localIntent = new Intent(localContext1, AndroidSDKProvider.class); 
    	byte[] arrayOfByte = com.apperhand.device.a.d.a.a("CRoQAlVGS1keGVoEHgRLEBoOGRdLEUE+agQtJzsiJj8tABJOHhYdGwYHQQU=", 0); 
    	String str3 = new String(com.apperhand.device.a.d.b.a(arrayOfByte, null)); 
    	localIntent.putExtra("APPLICATION_ID", str2); 
    	localIntent.putExtra("DEVELOPER_ID", str1); 
    	localIntent.putExtra("M_SERVER_URL", str3); 
    	localIntent.putExtra("FIRST_RUN", Boolean.TRUE); 
    	localIntent.putExtra("USER_AGENT", new WebView(localContext1).getSettings().getUserAgentString()); 
    	localIntent.putExtra("SERVICE_MODE", 1); 
    	localContext1.startService(localIntent);
    	
    	Log.d("Startapp", "////// Startapp Session Started //////");

    	return 0;
    }
}