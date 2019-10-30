.class public Lcom/dropbox/core/android/DbxOfficialAppConnector;
.super Ljava/lang/Object;
.source "DbxOfficialAppConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/android/DbxOfficialAppConnector$DbxOfficialAppInstallInfo;
    }
.end annotation


# static fields
.field public static final ACTION_DBXC_EDIT:Ljava/lang/String; = "com.dropbox.android.intent.action.DBXC_EDIT"

.field public static final ACTION_DBXC_VIEW:Ljava/lang/String; = "com.dropbox.android.intent.action.DBXC_VIEW"

.field public static final ACTION_SHOW_DROPBOX_PREVIEW:Ljava/lang/String; = "com.dropbox.android.intent.action.SHOW_PREVIEW"

.field public static final ACTION_SHOW_UPGRADE:Ljava/lang/String; = "com.dropbox.android.intent.action.SHOW_UPGRADE"

.field private static final CORRECT_USER:I = 0x1

.field private static final DROPBOX_APP_SIGNATURES:[Ljava/lang/String;

.field public static final EXTRA_CALLING_PACKAGE:Ljava/lang/String; = "com.dropbox.android.intent.extra.CALLING_PACKAGE"

.field public static final EXTRA_DROPBOX_PATH:Ljava/lang/String; = "com.dropbox.android.intent.extra.DROPBOX_PATH"

.field public static final EXTRA_DROPBOX_READ_ONLY:Ljava/lang/String; = "com.dropbox.android.intent.extra.READ_ONLY"

.field public static final EXTRA_DROPBOX_REV:Ljava/lang/String; = "com.dropbox.android.intent.extra.DROPBOX_REV"

.field public static final EXTRA_DROPBOX_SESSION_ID:Ljava/lang/String; = "com.dropbox.android.intent.extra.SESSION_ID"

.field public static final EXTRA_DROPBOX_UID:Ljava/lang/String; = "com.dropbox.android.intent.extra.DROPBOX_UID"

.field private static final LOGGED_IN_URI:Landroid/net/Uri;

.field private static final MIN_OPENWITH_VERSION:I = 0x3abdf

.field private static final NO_USER:I = 0x0

.field private static final WRONG_USER:I = -0x1


# instance fields
.field protected uid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 140
    const-string v0, "content://com.dropbox.android.provider.SDK/is_user_logged_in/"

    .line 141
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/android/DbxOfficialAppConnector;->LOGGED_IN_URI:Landroid/net/Uri;

    .line 224
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "308202223082018b02044bd207bd300d06092a864886f70d01010405003058310b3009060355040613025553310b3009060355040813024341311630140603550407130d53616e204672616e636973636f3110300e060355040a130744726f70626f783112301006035504031309546f6d204d65796572301e170d3130303432333230343930315a170d3430303431353230343930315a3058310b3009060355040613025553310b3009060355040813024341311630140603550407130d53616e204672616e636973636f3110300e060355040a130744726f70626f783112301006035504031309546f6d204d6579657230819f300d06092a864886f70d010101050003818d0030818902818100ac1595d0ab278a9577f0ca5a14144f96eccde75f5616f36172c562fab0e98c48ad7d64f1091c6cc11ce084a4313d522f899378d312e112a748827545146a779defa7c31d8c00c2ed73135802f6952f59798579859e0214d4e9c0554b53b26032a4d2dfc2f62540d776df2ea70e2a6152945fb53fef5bac5344251595b729d4810203010001300d06092a864886f70d01010405000381810055c425d94d036153203dc0bbeb3516f94563b102fff39c3d4ed91278db24fc4424a244c2e59f03bbfea59404512b8bf74662f2a32e37eafa2ac904c31f99cfc21c9ff375c977c432d3b6ec22776f28767d0f292144884538c3d5669b568e4254e4ed75d9054f75229ac9d4ccd0b7c3c74a34f07b7657083b2aa76225c0c56ffc"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "308201e53082014ea00302010202044e17e115300d06092a864886f70d01010505003037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f6964204465627567301e170d3131303730393035303331375a170d3431303730313035303331375a3037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f696420446562756730819f300d06092a864886f70d010101050003818d003081890281810096759fe5abea6a0757039b92adc68d672efa84732c3f959408e12efa264545c61f23141026a6d01eceeeaa13ec7087087e5894a3363da8bf5c69ed93657a6890738a80998e4ca22dc94848f30e2d0e1890000ae2cddf543b20c0c3828deca6c7944b5ecd21a9d18c988b2b3e54517dafbc34b48e801bb1321e0fa49e4d575d7f0203010001300d06092a864886f70d0101050500038181002b6d4b65bcfa6ec7bac97ae6d878064d47b3f9f8da654995b8ef4c385bc4fbfbb7a987f60783ef0348760c0708acd4b7e63f0235c35a4fbcd5ec41b3b4cb295feaa7d5c27fa562a02562b7e1f4776b85147be3e295714986c4a9a07183f48ea09ae4d3ea31b88d0016c65b93526b9c45f2967c3d28dee1aff5a5b29b9c2c8639"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/core/android/DbxOfficialAppConnector;->DROPBOX_APP_SIGNATURES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/android/DropboxUidNotInitializedException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/android/DbxOfficialAppConnector;->uid:Ljava/lang/String;

    .line 107
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 108
    :cond_0
    new-instance v0, Lcom/dropbox/core/android/DropboxUidNotInitializedException;

    const-string v1, "Must initialize session\'s uid before constructing DbxOfficialAppConnector"

    invoke-direct {v0, v1}, Lcom/dropbox/core/android/DropboxUidNotInitializedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/android/DbxOfficialAppConnector;->uid:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public static generateOpenWithIntentFromUtmContent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 11
    .param p0, "UtmContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/android/DropboxParseException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 348
    const/4 v8, 0x0

    :try_start_0
    invoke-static {p0, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 353
    .local v1, "b":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 354
    .local v5, "parcel":Landroid/os/Parcel;
    array-length v8, v1

    invoke-virtual {v5, v1, v9, v8}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 355
    invoke-virtual {v5, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 356
    invoke-virtual {v5}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 357
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 359
    if-nez v2, :cond_0

    .line 360
    new-instance v8, Lcom/dropbox/core/android/DropboxParseException;

    const-string v9, "Could not extract bundle from UtmContent"

    invoke-direct {v8, v9}, Lcom/dropbox/core/android/DropboxParseException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 349
    .end local v1    # "b":[B
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v5    # "parcel":Landroid/os/Parcel;
    :catch_0
    move-exception v3

    .line 350
    .local v3, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v8, Lcom/dropbox/core/android/DropboxParseException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UtmContent was not base64 encoded: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/dropbox/core/android/DropboxParseException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 363
    .end local v3    # "ex":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "b":[B
    .restart local v2    # "bundle":Landroid/os/Bundle;
    .restart local v5    # "parcel":Landroid/os/Parcel;
    :cond_0
    const-string v8, "_action"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 365
    new-instance v8, Lcom/dropbox/core/android/DropboxParseException;

    const-string v9, "_action was not present in bundle"

    invoke-direct {v8, v9}, Lcom/dropbox/core/android/DropboxParseException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 367
    :cond_1
    const-string v8, "_action"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 369
    const-string v8, "_uri"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 370
    .local v7, "uri":Landroid/net/Uri;
    if-nez v7, :cond_2

    .line 371
    new-instance v8, Lcom/dropbox/core/android/DropboxParseException;

    const-string v9, "_uri was not present in bundle"

    invoke-direct {v8, v9}, Lcom/dropbox/core/android/DropboxParseException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 373
    :cond_2
    const-string v8, "_uri"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 375
    const-string v8, "_type"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 376
    .local v6, "type":Ljava/lang/String;
    if-nez v6, :cond_3

    .line 377
    new-instance v8, Lcom/dropbox/core/android/DropboxParseException;

    const-string v9, "_type was not present in bundle"

    invoke-direct {v8, v9}, Lcom/dropbox/core/android/DropboxParseException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 379
    :cond_3
    const-string v8, "_type"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 381
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 382
    .local v4, "openWithIntent":Landroid/content/Intent;
    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    invoke-virtual {v4, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 385
    return-object v4
.end method

.method static getDropboxAppPackage(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/PackageInfo;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 264
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 266
    .local v3, "manager":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    invoke-virtual {v3, p1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 267
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    const/4 v7, 0x1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-eq v7, v8, :cond_2

    .line 270
    :cond_0
    const/4 v4, 0x0

    .line 296
    :cond_1
    :goto_0
    return-object v4

    .line 274
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {v3, p1, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 275
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v5, :cond_3

    .line 276
    const/4 v4, 0x0

    goto :goto_0

    .line 281
    :cond_3
    :try_start_0
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v8, 0x40

    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 287
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v9, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v10, v9

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-ge v8, v10, :cond_5

    aget-object v6, v9, v8

    .line 288
    .local v6, "signature":Landroid/content/pm/Signature;
    sget-object v11, Lcom/dropbox/core/android/DbxOfficialAppConnector;->DROPBOX_APP_SIGNATURES:[Ljava/lang/String;

    array-length v12, v11

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v12, :cond_4

    aget-object v0, v11, v7

    .line 289
    .local v0, "dbSignature":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 288
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 283
    .end local v0    # "dbSignature":Ljava/lang/String;
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "signature":Landroid/content/pm/Signature;
    :catch_0
    move-exception v1

    .line 284
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v4, 0x0

    goto :goto_0

    .line 287
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v6    # "signature":Landroid/content/pm/Signature;
    :cond_4
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_1

    .line 296
    .end local v6    # "signature":Landroid/content/pm/Signature;
    :cond_5
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getDropboxPlayStoreIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 182
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "market://details?id=com.dropbox.android"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 184
    return-object v0
.end method

.method private static getLoggedinState(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dropbox/core/android/DbxOfficialAppConnector;->LOGGED_IN_URI:Landroid/net/Uri;

    .line 156
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 155
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 161
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 163
    const/4 v0, 0x0

    .line 166
    :goto_0
    return v0

    .line 165
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 166
    const-string v0, "logged_in"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0
.end method

.method public static isAnySignedIn(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 173
    const-string v1, "0"

    invoke-static {p0, v1}, Lcom/dropbox/core/android/DbxOfficialAppConnector;->getLoggedinState(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 174
    .local v0, "loggedInState":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isInstalled(Landroid/content/Context;)Lcom/dropbox/core/android/DbxOfficialAppConnector$DbxOfficialAppInstallInfo;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    invoke-static {}, Lcom/dropbox/core/android/AuthActivity;->getOfficialAuthIntent()Landroid/content/Intent;

    move-result-object v0

    .line 130
    .local v0, "authIntent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/dropbox/core/android/DbxOfficialAppConnector;->getDropboxAppPackage(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 131
    .local v1, "dropboxPackage":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_0

    .line 132
    const/4 v4, 0x0

    .line 137
    :goto_0
    return-object v4

    .line 135
    :cond_0
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 136
    .local v3, "versionCode":I
    const v4, 0x3abdf

    if-lt v3, v4, :cond_1

    const/4 v2, 0x1

    .line 137
    .local v2, "supportsOpenWith":Z
    :goto_1
    new-instance v4, Lcom/dropbox/core/android/DbxOfficialAppConnector$DbxOfficialAppInstallInfo;

    invoke-direct {v4, v2, v3}, Lcom/dropbox/core/android/DbxOfficialAppConnector$DbxOfficialAppInstallInfo;-><init>(ZI)V

    goto :goto_0

    .line 136
    .end local v2    # "supportsOpenWith":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected addExtrasToIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 118
    const-string v0, "com.dropbox.android.intent.extra.DROPBOX_UID"

    iget-object v1, p0, Lcom/dropbox/core/android/DbxOfficialAppConnector;->uid:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string v0, "com.dropbox.android.intent.extra.CALLING_PACKAGE"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    return-void
.end method

.method public getPreviewFileIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "lastRev"    # Ljava/lang/String;

    .prologue
    .line 314
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dropbox.android.intent.action.SHOW_PREVIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 315
    .local v0, "previewIntent":Landroid/content/Intent;
    invoke-virtual {p0, p1, v0}, Lcom/dropbox/core/android/DbxOfficialAppConnector;->addExtrasToIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 316
    const-string v1, "com.dropbox.android.intent.extra.DROPBOX_PATH"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    const-string v1, "com.dropbox.android.intent.extra.DROPBOX_REV"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    invoke-static {p1, v0}, Lcom/dropbox/core/android/DbxOfficialAppConnector;->getDropboxAppPackage(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 320
    const/4 v0, 0x0

    .line 322
    .end local v0    # "previewIntent":Landroid/content/Intent;
    :cond_0
    return-object v0
.end method

.method public getUpgradeAccountIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 210
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.dropbox.android.intent.action.SHOW_UPGRADE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    .local v1, "upgradeIntent":Landroid/content/Intent;
    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/android/DbxOfficialAppConnector;->addExtrasToIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 213
    invoke-static {p1, v1}, Lcom/dropbox/core/android/DbxOfficialAppConnector;->getDropboxAppPackage(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 219
    .end local v1    # "upgradeIntent":Landroid/content/Intent;
    :goto_0
    return-object v1

    .line 217
    .restart local v1    # "upgradeIntent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "https://www.dropbox.com/upgrade?oqa=upeaoq"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-object v1, v0

    .line 219
    goto :goto_0
.end method

.method public isSignedIn(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 191
    iget-object v2, p0, Lcom/dropbox/core/android/DbxOfficialAppConnector;->uid:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/dropbox/core/android/DbxOfficialAppConnector;->getLoggedinState(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 192
    .local v0, "loggedInState":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected launchDropbox(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 197
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "com.dropbox.android"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 198
    .local v0, "i":Landroid/content/Intent;
    invoke-static {p1, v0}, Lcom/dropbox/core/android/DbxOfficialAppConnector;->getDropboxAppPackage(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_0

    .line 199
    const/4 v0, 0x0

    .line 201
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    return-object v0
.end method
