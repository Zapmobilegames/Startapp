/*
 * android-specific implementation of the startapp extension.
 * Add any platform-specific functionality here.
 */
/*
 * NOTE: This file was originally written by the extension builder, but will not
 * be overwritten (unless --force is specified) and is intended to be modified.
 */
#include "startapp_internal.h"

#include "s3eEdk.h"
#include "s3eEdk_android.h"
#include <jni.h>
#include "IwDebug.h"

static jobject g_Obj;
static jmethodID g_initSDK;
static jmethodID g_Show_Ad;
static jmethodID g_Show_SearchBox;

s3eResult startappInit_platform()
{
    // Get the environment from the pointer
    JNIEnv* env = s3eEdkJNIGetEnv();
    jobject obj = NULL;
    jmethodID cons = NULL;

    // Get the extension class
    jclass cls = s3eEdkAndroidFindClass("startapp");
    if (!cls)
        goto fail;

    // Get its constructor
    cons = env->GetMethodID(cls, "<init>", "()V");
    if (!cons)
        goto fail;

    // Construct the java class
    obj = env->NewObject(cls, cons);
    if (!obj)
        goto fail;

    // Get all the extension methods
    g_initSDK = env->GetMethodID(cls, "initSDK", "(Ljava/lang/String;Ljava/lang/String;)I");
    if (!g_initSDK)
        goto fail;

    g_Show_Ad = env->GetMethodID(cls, "Show_Ad", "()I");
    if (!g_Show_Ad)
        goto fail;

    g_Show_SearchBox = env->GetMethodID(cls, "Show_SearchBox", "(Z)I");
    if (!g_Show_SearchBox)
        goto fail;



    IwTrace(STARTAPP, ("STARTAPP init success"));
    g_Obj = env->NewGlobalRef(obj);
    env->DeleteLocalRef(obj);
    env->DeleteGlobalRef(cls);

    // Add any platform-specific initialisation code here
    return S3E_RESULT_SUCCESS;

fail:
    jthrowable exc = env->ExceptionOccurred();
    if (exc)
    {
        env->ExceptionDescribe();
        env->ExceptionClear();
        IwTrace(startapp, ("One or more java methods could not be found"));
    }
    return S3E_RESULT_ERROR;

}

void startappTerminate_platform()
{
    // Add any platform-specific termination code here
}

s3eResult initSDK_platform(const char* DEV_ID, const char* APP_ID)
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    jstring DEV_ID_jstr = env->NewStringUTF(DEV_ID);
    jstring APP_ID_jstr = env->NewStringUTF(APP_ID);
    return (s3eResult)env->CallIntMethod(g_Obj, g_initSDK, DEV_ID_jstr, APP_ID_jstr);
}

s3eResult Show_Ad_platform()
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    return (s3eResult)env->CallIntMethod(g_Obj, g_Show_Ad);
}

s3eResult Show_SearchBox_platform(bool show)
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    return (s3eResult)env->CallIntMethod(g_Obj, g_Show_SearchBox, show);
}
