Startapp
========

StartApp is a new monetization and distribution platform focusing on free applications for mobile phones. As of today, it is available on Android only.

This is an extension for Marmalade of the Startapp SDK, version 1.0.11.

The extension is really simple. The only lines to be added in your Main.cpp, just before Game::Create() are:

if(startappAvailable())

{

// DEVID: 00000000000, APPID: 11111111111 [Put your ID's]

initSDK("00000000000", "11111111111");

}

If you want to know how to build your extension, follow the instructions at this link: http://www.microsofttranslator.com/bv.aspx?from=&to=en&a=http://habrahabr.ru/post/124077/

When asking for their SDK, don't forget to tell that Zapmobilegames (http://www.zapmobilegames.com) referred them to you, you could receive an entry bonus.