Startapp
========

StartApp is a new monetization and distribution platform focusing on free applications for mobile phones. As of today, it is available on Android only.
You can ask for theirs SDK using this link (http://startapp.com/rf7dzh2) and you'll get:
- $15 after first 1000 downloads 
- $15 after first 250.000 impressions

Download the jars and place it in your app folder.

This is an extension for Marmalade of the Startapp SDK: StartApp_InApp_SearchBox_PostCall_SDK-1.0.7.

The extension is really simple. The only lines to be added in your Main.cpp, just before Game::Create() are:

if(startappAvailable())

{

	initSDK(STARTAPP_DEVID, STARTAPP_APPID); // STARTAPP_DEVID and STARTAPP_APPID from your Startapp Dashboard

}

When you wan to show ads, just call Show_Ad().

Please, read carefully the instruction in the pdf and don't forget to insert at least these lines in the Manifest:

    <!-- Startapp -->
    <activity android:name="com.startapp.android.eula.EULAActivity"
      android:theme="@android:style/Theme.Translucent"
      android:configChanges="keyboard|keyboardHidden|orientation" />
    <activity android:name="com.startapp.android.publish.list3d.List3DActivity"
      android:taskAffinity="<YOUR_PACKAGE>.AppWall"
      android:theme="@android:style/Theme" />
    <activity android:name="com.startapp.android.publish.AppWallActivity"
      android:theme="@android:style/Theme.Translucent"
      android:taskAffinity="<YOUR_PACKAGE>.AppWall"
      android:configChanges="orientation|keyboardHidden" />
    <meta-data android:name="com.startapp.android.DEV_ID" android:value= "YOUR_DEV_ID"/>
    <meta-data android:name="com.startapp.android.APP_ID" android:value= "YOUR_APP_ID"/>

A complete working example is in the folder.

If you want to know how to build your extension, follow the instructions at this link: http://www.microsofttranslator.com/bv.aspx?from=&to=en&a=http://habrahabr.ru/post/124077/