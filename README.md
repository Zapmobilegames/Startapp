Startapp
========

StartApp is a new monetization and distribution platform focusing on free applications for mobile phones. As of today, it is available on Android only.
You can ask for theirs SDK using this link and you'll get 25$ after first 100 downloads as an entry gift: http://startapp.com/rf7dzh2

This is an extension for Marmalade of the Startapp SDK, version 1.0.18.

The extension is really simple. The only lines to be added in your Main.cpp, just before Game::Create() are:

if(startappAvailable())

{

initSDK();

}

Please, read carefully the instruction in the pdf and don't forget to insert at least these lines in the Manifest:

      <!-- Startapp -->
      <service android:enabled="true"
		    android:name="com.apperhand.device.android.AndroidSDKProvider">
      </service>

      <!-- Startapp -->
      <activity android:name="com.apperhand.device.android.EULAActivity"
        android:theme="@android:style/Theme.Translucent"
        android:configChanges="keyboard|keyboardHidden|orientation" />

      <!-- Startapp DevID e AppID-->
      <meta-data android:name="com.startapp.android.DEV_ID" android:value= "<DEV_ID_VALUE>"/>
      <meta-data android:name="com.startapp.android.APP_ID" android:value= "<APP_ID_VALUE>"/>


If you want to know how to build your extension, follow the instructions at this link: http://www.microsofttranslator.com/bv.aspx?from=&to=en&a=http://habrahabr.ru/post/124077/