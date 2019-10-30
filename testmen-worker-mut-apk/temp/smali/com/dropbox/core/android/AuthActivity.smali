.class public Lcom/dropbox/core/android/AuthActivity;
.super Landroid/app/Activity;
.source "AuthActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/android/AuthActivity$SecurityProvider;
    }
.end annotation


# static fields
.field public static final ACTION_AUTHENTICATE_V1:Ljava/lang/String; = "com.dropbox.android.AUTHENTICATE_V1"

.field public static final ACTION_AUTHENTICATE_V2:Ljava/lang/String; = "com.dropbox.android.AUTHENTICATE_V2"

.field public static final AUTH_PATH_CONNECT:Ljava/lang/String; = "/connect"

.field public static final AUTH_VERSION:I = 0x1

.field private static final DEFAULT_WEB_HOST:Ljava/lang/String; = "www.dropbox.com"

.field public static final EXTRA_ACCESS_SECRET:Ljava/lang/String; = "ACCESS_SECRET"

.field public static final EXTRA_ACCESS_TOKEN:Ljava/lang/String; = "ACCESS_TOKEN"

.field public static final EXTRA_ALREADY_AUTHED_UIDS:Ljava/lang/String; = "ALREADY_AUTHED_UIDS"

.field public static final EXTRA_AUTH_STATE:Ljava/lang/String; = "AUTH_STATE"

.field public static final EXTRA_CALLING_CLASS:Ljava/lang/String; = "CALLING_CLASS"

.field public static final EXTRA_CALLING_PACKAGE:Ljava/lang/String; = "CALLING_PACKAGE"

.field public static final EXTRA_CONSUMER_KEY:Ljava/lang/String; = "CONSUMER_KEY"

.field public static final EXTRA_CONSUMER_SIG:Ljava/lang/String; = "CONSUMER_SIG"

.field public static final EXTRA_DESIRED_UID:Ljava/lang/String; = "DESIRED_UID"

.field public static final EXTRA_SESSION_ID:Ljava/lang/String; = "SESSION_ID"

.field public static final EXTRA_UID:Ljava/lang/String; = "UID"

.field private static final SIS_KEY_AUTH_STATE_NONCE:Ljava/lang/String; = "SIS_KEY_AUTH_STATE_NONCE"

.field private static final TAG:Ljava/lang/String;

.field public static result:Landroid/content/Intent;

.field private static sAlreadyAuthedUids:[Ljava/lang/String;

.field private static sApiType:Ljava/lang/String;

.field private static sAppKey:Ljava/lang/String;

.field private static sDesiredUid:Ljava/lang/String;

.field private static sSecurityProvider:Lcom/dropbox/core/android/AuthActivity$SecurityProvider;

.field private static final sSecurityProviderLock:Ljava/lang/Object;

.field private static sSessionId:Ljava/lang/String;

.field private static sWebHost:Ljava/lang/String;


# instance fields
.field private mActivityDispatchHandlerPosted:Z

.field private mAlreadyAuthedUids:[Ljava/lang/String;

.field private mApiType:Ljava/lang/String;

.field private mAppKey:Ljava/lang/String;

.field private mAuthStateNonce:Ljava/lang/String;

.field private mDesiredUid:Ljava/lang/String;

.field private mSessionId:Ljava/lang/String;

.field private mWebHost:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/dropbox/core/android/AuthActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/android/AuthActivity;->TAG:Ljava/lang/String;

    .line 146
    new-instance v0, Lcom/dropbox/core/android/AuthActivity$1;

    invoke-direct {v0}, Lcom/dropbox/core/android/AuthActivity$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/android/AuthActivity;->sSecurityProvider:Lcom/dropbox/core/android/AuthActivity$SecurityProvider;

    .line 152
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dropbox/core/android/AuthActivity;->sSecurityProviderLock:Ljava/lang/Object;

    .line 155
    const/4 v0, 0x0

    sput-object v0, Lcom/dropbox/core/android/AuthActivity;->result:Landroid/content/Intent;

    .line 159
    const-string v0, "www.dropbox.com"

    sput-object v0, Lcom/dropbox/core/android/AuthActivity;->sWebHost:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->mAuthStateNonce:Ljava/lang/String;

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/android/AuthActivity;->mActivityDispatchHandlerPosted:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/android/AuthActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/dropbox/core/android/AuthActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/dropbox/core/android/AuthActivity;->startWebAuth(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/dropbox/core/android/AuthActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/dropbox/core/android/AuthActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/dropbox/core/android/AuthActivity;->mAuthStateNonce:Ljava/lang/String;

    return-object p1
.end method

.method private authFinished(Landroid/content/Intent;)V
    .locals 1
    .param p1, "authResult"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 536
    sput-object p1, Lcom/dropbox/core/android/AuthActivity;->result:Landroid/content/Intent;

    .line 537
    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->mAuthStateNonce:Ljava/lang/String;

    .line 538
    invoke-static {v0, v0, v0}, Lcom/dropbox/core/android/AuthActivity;->setAuthParams(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 539
    invoke-virtual {p0}, Lcom/dropbox/core/android/AuthActivity;->finish()V

    .line 540
    return-void
.end method

.method public static checkAppBeforeAuth(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "alertUser"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 277
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    .local v5, "testIntent":Landroid/content/Intent;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "db-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 279
    .local v4, "scheme":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/connect"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 280
    .local v6, "uri":Ljava/lang/String;
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 281
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 282
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v5, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 284
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 285
    :cond_0
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "URI scheme in your app\'s manifest is not set up correctly. You should have a "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-class v9, Lcom/dropbox/core/android/AuthActivity;

    .line 287
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with the "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "scheme: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 289
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v8, :cond_3

    .line 290
    if-eqz p2, :cond_2

    .line 291
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 292
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string v8, "Security alert"

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 293
    const-string v8, "Another app on your phone may be trying to pose as the app you are currently using. The malicious app can\'t access your account, but linking to Dropbox has been disabled as a precaution. Please contact support@dropbox.com."

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 298
    const-string v8, "OK"

    new-instance v9, Lcom/dropbox/core/android/AuthActivity$2;

    invoke-direct {v9}, Lcom/dropbox/core/android/AuthActivity$2;-><init>()V

    invoke-virtual {v1, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 304
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 330
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    return v7

    .line 306
    :cond_2
    sget-object v8, Lcom/dropbox/core/android/AuthActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "There are multiple apps registered for the AuthActivity URI scheme ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ").  Another app may be trying to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " impersonate this app, so authentication will be disabled."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 315
    :cond_3
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 316
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_4

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_4

    .line 317
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 318
    :cond_4
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "There must be a "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-class v9, Lcom/dropbox/core/android/AuthActivity;

    .line 319
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " within your app\'s package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "registered for your URI scheme ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "). However, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "it appears that an activity in a different package is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "registered for that scheme instead. If you have "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "multiple apps that all want to use the same access"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "token pair, designate one of them to do "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "authentication and have the other apps launch it "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "and then retrieve the token pair from it."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_5
    move v7, v8

    .line 330
    goto/16 :goto_0
.end method

.method private createStateNonce()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x10

    .line 564
    const/16 v0, 0x10

    .line 565
    .local v0, "NONCE_BYTES":I
    new-array v2, v8, [B

    .line 566
    .local v2, "randomBytes":[B
    invoke-static {}, Lcom/dropbox/core/android/AuthActivity;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 567
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 568
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "oauth2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_0

    .line 570
    const-string v4, "%02x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-byte v7, v2, v1

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 572
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method static getOfficialAuthIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 397
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dropbox.android.AUTHENTICATE_V2"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 398
    .local v0, "authIntent":Landroid/content/Intent;
    const-string v1, "com.dropbox.android"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    return-object v0
.end method

.method private static getSecureRandom()Ljava/security/SecureRandom;
    .locals 2

    .prologue
    .line 358
    invoke-static {}, Lcom/dropbox/core/android/AuthActivity;->getSecurityProvider()Lcom/dropbox/core/android/AuthActivity$SecurityProvider;

    move-result-object v0

    .line 359
    .local v0, "prov":Lcom/dropbox/core/android/AuthActivity$SecurityProvider;
    if-eqz v0, :cond_0

    .line 360
    invoke-interface {v0}, Lcom/dropbox/core/android/AuthActivity$SecurityProvider;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    .line 362
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    goto :goto_0
.end method

.method private static getSecurityProvider()Lcom/dropbox/core/android/AuthActivity$SecurityProvider;
    .locals 2

    .prologue
    .line 352
    sget-object v1, Lcom/dropbox/core/android/AuthActivity;->sSecurityProviderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 353
    :try_start_0
    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->sSecurityProvider:Lcom/dropbox/core/android/AuthActivity$SecurityProvider;

    monitor-exit v1

    return-object v0

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static makeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "webHost"    # Ljava/lang/String;
    .param p3, "apiType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 232
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/dropbox/core/android/AuthActivity;->makeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static makeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "desiredUid"    # Ljava/lang/String;
    .param p3, "alreadyAuthedUids"    # [Ljava/lang/String;
    .param p4, "sessionId"    # Ljava/lang/String;
    .param p5, "webHost"    # Ljava/lang/String;
    .param p6, "apiType"    # Ljava/lang/String;

    .prologue
    .line 257
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'appKey\' can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_0
    invoke-static/range {p1 .. p6}, Lcom/dropbox/core/android/AuthActivity;->setAuthParams(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dropbox/core/android/AuthActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method static setAuthParams(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p0, "appKey"    # Ljava/lang/String;
    .param p1, "desiredUid"    # Ljava/lang/String;
    .param p2, "alreadyAuthedUids"    # [Ljava/lang/String;

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/dropbox/core/android/AuthActivity;->setAuthParams(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method static setAuthParams(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "appKey"    # Ljava/lang/String;
    .param p1, "desiredUid"    # Ljava/lang/String;
    .param p2, "alreadyAuthedUids"    # [Ljava/lang/String;
    .param p3, "sessionId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 203
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/dropbox/core/android/AuthActivity;->setAuthParams(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method static setAuthParams(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "appKey"    # Ljava/lang/String;
    .param p1, "desiredUid"    # Ljava/lang/String;
    .param p2, "alreadyAuthedUids"    # [Ljava/lang/String;
    .param p3, "webHost"    # Ljava/lang/String;
    .param p4, "apiType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 195
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/dropbox/core/android/AuthActivity;->setAuthParams(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method static setAuthParams(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "appKey"    # Ljava/lang/String;
    .param p1, "desiredUid"    # Ljava/lang/String;
    .param p2, "alreadyAuthedUids"    # [Ljava/lang/String;
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "webHost"    # Ljava/lang/String;
    .param p5, "apiType"    # Ljava/lang/String;

    .prologue
    .line 211
    sput-object p0, Lcom/dropbox/core/android/AuthActivity;->sAppKey:Ljava/lang/String;

    .line 212
    sput-object p1, Lcom/dropbox/core/android/AuthActivity;->sDesiredUid:Ljava/lang/String;

    .line 213
    if-eqz p2, :cond_0

    .end local p2    # "alreadyAuthedUids":[Ljava/lang/String;
    :goto_0
    sput-object p2, Lcom/dropbox/core/android/AuthActivity;->sAlreadyAuthedUids:[Ljava/lang/String;

    .line 214
    sput-object p3, Lcom/dropbox/core/android/AuthActivity;->sSessionId:Ljava/lang/String;

    .line 215
    if-eqz p4, :cond_1

    .end local p4    # "webHost":Ljava/lang/String;
    :goto_1
    sput-object p4, Lcom/dropbox/core/android/AuthActivity;->sWebHost:Ljava/lang/String;

    .line 216
    sput-object p5, Lcom/dropbox/core/android/AuthActivity;->sApiType:Ljava/lang/String;

    .line 217
    return-void

    .line 213
    .restart local p2    # "alreadyAuthedUids":[Ljava/lang/String;
    .restart local p4    # "webHost":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    new-array p2, v0, [Ljava/lang/String;

    goto :goto_0

    .line 215
    .end local p2    # "alreadyAuthedUids":[Ljava/lang/String;
    :cond_1
    const-string p4, "www.dropbox.com"

    goto :goto_1
.end method

.method public static setSecurityProvider(Lcom/dropbox/core/android/AuthActivity$SecurityProvider;)V
    .locals 2
    .param p0, "prov"    # Lcom/dropbox/core/android/AuthActivity$SecurityProvider;

    .prologue
    .line 346
    sget-object v1, Lcom/dropbox/core/android/AuthActivity;->sSecurityProviderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 347
    :try_start_0
    sput-object p0, Lcom/dropbox/core/android/AuthActivity;->sSecurityProvider:Lcom/dropbox/core/android/AuthActivity$SecurityProvider;

    .line 348
    monitor-exit v1

    .line 349
    return-void

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private startWebAuth(Ljava/lang/String;)V
    .locals 8
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 543
    const-string v4, "1/connect"

    .line 544
    .local v4, "path":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 549
    .local v2, "locale":Ljava/util/Locale;
    iget-object v6, p0, Lcom/dropbox/core/android/AuthActivity;->mAlreadyAuthedUids:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/dropbox/core/android/AuthActivity;->mAlreadyAuthedUids:[Ljava/lang/String;

    aget-object v0, v6, v7

    .line 551
    .local v0, "alreadyAuthedUid":Ljava/lang/String;
    :goto_0
    const/16 v6, 0x8

    new-array v3, v6, [Ljava/lang/String;

    const-string v6, "k"

    aput-object v6, v3, v7

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/dropbox/core/android/AuthActivity;->mAppKey:Ljava/lang/String;

    aput-object v7, v3, v6

    const/4 v6, 0x2

    const-string v7, "n"

    aput-object v7, v3, v6

    const/4 v6, 0x3

    aput-object v0, v3, v6

    const/4 v6, 0x4

    const-string v7, "api"

    aput-object v7, v3, v6

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/dropbox/core/android/AuthActivity;->mApiType:Ljava/lang/String;

    aput-object v7, v3, v6

    const/4 v6, 0x6

    const-string v7, "state"

    aput-object v7, v3, v6

    const/4 v6, 0x7

    aput-object p1, v3, v6

    .line 557
    .local v3, "params":[Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/dropbox/core/android/AuthActivity;->mWebHost:Ljava/lang/String;

    invoke-static {v6, v7, v4, v3}, Lcom/dropbox/core/DbxRequestUtil;->buildUrlWithParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 559
    .local v5, "url":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 560
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/dropbox/core/android/AuthActivity;->startActivity(Landroid/content/Intent;)V

    .line 561
    return-void

    .line 549
    .end local v0    # "alreadyAuthedUid":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "params":[Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 367
    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->sAppKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->mAppKey:Ljava/lang/String;

    .line 368
    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->sWebHost:Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->mWebHost:Ljava/lang/String;

    .line 369
    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->sApiType:Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->mApiType:Ljava/lang/String;

    .line 370
    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->sDesiredUid:Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->mDesiredUid:Ljava/lang/String;

    .line 371
    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->sAlreadyAuthedUids:[Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->mAlreadyAuthedUids:[Ljava/lang/String;

    .line 372
    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->sSessionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->mSessionId:Ljava/lang/String;

    .line 374
    if-nez p1, :cond_0

    .line 375
    sput-object v1, Lcom/dropbox/core/android/AuthActivity;->result:Landroid/content/Intent;

    .line 376
    iput-object v1, p0, Lcom/dropbox/core/android/AuthActivity;->mAuthStateNonce:Ljava/lang/String;

    .line 381
    :goto_0
    const v0, 0x1030010

    invoke-virtual {p0, v0}, Lcom/dropbox/core/android/AuthActivity;->setTheme(I)V

    .line 383
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 384
    return-void

    .line 378
    :cond_0
    const-string v0, "SIS_KEY_AUTH_STATE_NONCE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->mAuthStateNonce:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 481
    iget-object v7, p0, Lcom/dropbox/core/android/AuthActivity;->mAuthStateNonce:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 482
    invoke-direct {p0, v8}, Lcom/dropbox/core/android/AuthActivity;->authFinished(Landroid/content/Intent;)V

    .line 533
    :goto_0
    return-void

    .line 486
    :cond_0
    const/4 v4, 0x0

    .local v4, "token":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "secret":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "uid":Ljava/lang/String;
    const/4 v3, 0x0

    .line 488
    .local v3, "state":Ljava/lang/String;
    const-string v7, "ACCESS_TOKEN"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 490
    const-string v7, "ACCESS_TOKEN"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 491
    const-string v7, "ACCESS_SECRET"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 492
    const-string v7, "UID"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 493
    const-string v7, "AUTH_STATE"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 511
    :cond_1
    :goto_1
    if-eqz v4, :cond_4

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    if-eqz v2, :cond_4

    const-string v7, ""

    .line 512
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    if-eqz v5, :cond_4

    const-string v7, ""

    .line 513
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    if-eqz v3, :cond_4

    const-string v7, ""

    .line 514
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 517
    iget-object v7, p0, Lcom/dropbox/core/android/AuthActivity;->mAuthStateNonce:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 518
    invoke-direct {p0, v8}, Lcom/dropbox/core/android/AuthActivity;->authFinished(Landroid/content/Intent;)V

    goto :goto_0

    .line 496
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 497
    .local v6, "uri":Landroid/net/Uri;
    if-eqz v6, :cond_1

    .line 498
    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 499
    .local v1, "path":Ljava/lang/String;
    const-string v7, "/connect"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 501
    :try_start_0
    const-string v7, "oauth_token"

    invoke-virtual {v6, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 502
    const-string v7, "oauth_token_secret"

    invoke-virtual {v6, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 503
    const-string v7, "uid"

    invoke-virtual {v6, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 504
    const-string v7, "state"

    invoke-virtual {v6, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_1

    .line 523
    .end local v1    # "path":Ljava/lang/String;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 524
    .local v0, "newResult":Landroid/content/Intent;
    const-string v7, "ACCESS_TOKEN"

    invoke-virtual {v0, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    const-string v7, "ACCESS_SECRET"

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    const-string v7, "UID"

    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    :goto_2
    invoke-direct {p0, v0}, Lcom/dropbox/core/android/AuthActivity;->authFinished(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 529
    .end local v0    # "newResult":Landroid/content/Intent;
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "newResult":Landroid/content/Intent;
    goto :goto_2

    .line 505
    .end local v0    # "newResult":Landroid/content/Intent;
    .restart local v1    # "path":Ljava/lang/String;
    .restart local v6    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 405
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 407
    invoke-virtual {p0}, Lcom/dropbox/core/android/AuthActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 475
    :goto_0
    return-void

    .line 411
    :cond_0
    iget-object v2, p0, Lcom/dropbox/core/android/AuthActivity;->mAuthStateNonce:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/dropbox/core/android/AuthActivity;->mAppKey:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 417
    :cond_1
    invoke-direct {p0, v3}, Lcom/dropbox/core/android/AuthActivity;->authFinished(Landroid/content/Intent;)V

    goto :goto_0

    .line 421
    :cond_2
    sput-object v3, Lcom/dropbox/core/android/AuthActivity;->result:Landroid/content/Intent;

    .line 423
    iget-boolean v2, p0, Lcom/dropbox/core/android/AuthActivity;->mActivityDispatchHandlerPosted:Z

    if-eqz v2, :cond_3

    .line 424
    sget-object v2, Lcom/dropbox/core/android/AuthActivity;->TAG:Ljava/lang/String;

    const-string v3, "onResume called again before Handler run"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 431
    :cond_3
    invoke-direct {p0}, Lcom/dropbox/core/android/AuthActivity;->createStateNonce()Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, "state":Ljava/lang/String;
    invoke-static {}, Lcom/dropbox/core/android/AuthActivity;->getOfficialAuthIntent()Landroid/content/Intent;

    move-result-object v0

    .line 435
    .local v0, "officialAuthIntent":Landroid/content/Intent;
    const-string v2, "CONSUMER_KEY"

    iget-object v3, p0, Lcom/dropbox/core/android/AuthActivity;->mAppKey:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    const-string v2, "CONSUMER_SIG"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    const-string v2, "DESIRED_UID"

    iget-object v3, p0, Lcom/dropbox/core/android/AuthActivity;->mDesiredUid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    const-string v2, "ALREADY_AUTHED_UIDS"

    iget-object v3, p0, Lcom/dropbox/core/android/AuthActivity;->mAlreadyAuthedUids:[Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    const-string v2, "SESSION_ID"

    iget-object v3, p0, Lcom/dropbox/core/android/AuthActivity;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    const-string v2, "CALLING_PACKAGE"

    invoke-virtual {p0}, Lcom/dropbox/core/android/AuthActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    const-string v2, "CALLING_CLASS"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    const-string v2, "AUTH_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/dropbox/core/android/AuthActivity$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/dropbox/core/android/AuthActivity$3;-><init>(Lcom/dropbox/core/android/AuthActivity;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 474
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/dropbox/core/android/AuthActivity;->mActivityDispatchHandlerPosted:Z

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 388
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 389
    const-string v0, "SIS_KEY_AUTH_STATE_NONCE"

    iget-object v1, p0, Lcom/dropbox/core/android/AuthActivity;->mAuthStateNonce:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    return-void
.end method
