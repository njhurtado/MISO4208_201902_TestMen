.class public Lorg/gnucash/android/export/DropboxHelper;
.super Ljava/lang/Object;
.source "DropboxHelper.java"


# static fields
.field private static sDbxClient:Lcom/dropbox/core/v2/DbxClientV2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClient()Lcom/dropbox/core/v2/DbxClientV2;
    .locals 6

    .prologue
    .line 68
    sget-object v3, Lorg/gnucash/android/export/DropboxHelper;->sDbxClient:Lcom/dropbox/core/v2/DbxClientV2;

    if-eqz v3, :cond_0

    .line 69
    sget-object v3, Lorg/gnucash/android/export/DropboxHelper;->sDbxClient:Lcom/dropbox/core/v2/DbxClientV2;

    .line 80
    .local v0, "accessToken":Ljava/lang/String;
    .local v1, "config":Lcom/dropbox/core/DbxRequestConfig;
    .local v2, "context":Landroid/content/Context;
    :goto_0
    return-object v3

    .line 71
    .end local v0    # "accessToken":Ljava/lang/String;
    .end local v1    # "config":Lcom/dropbox/core/DbxRequestConfig;
    .end local v2    # "context":Landroid/content/Context;
    :cond_0
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    .line 72
    .restart local v2    # "context":Landroid/content/Context;
    invoke-static {v2}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const v4, 0x7f0f00a5

    .line 73
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .restart local v0    # "accessToken":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 75
    invoke-static {}, Lcom/dropbox/core/android/Auth;->getOAuth2Token()Ljava/lang/String;

    move-result-object v0

    .line 77
    :cond_1
    new-instance v1, Lcom/dropbox/core/DbxRequestConfig;

    const-string v3, "org.gnucash.android"

    invoke-direct {v1, v3}, Lcom/dropbox/core/DbxRequestConfig;-><init>(Ljava/lang/String;)V

    .line 78
    .restart local v1    # "config":Lcom/dropbox/core/DbxRequestConfig;
    new-instance v3, Lcom/dropbox/core/v2/DbxClientV2;

    invoke-direct {v3, v1, v0}, Lcom/dropbox/core/v2/DbxClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;)V

    sput-object v3, Lorg/gnucash/android/export/DropboxHelper;->sDbxClient:Lcom/dropbox/core/v2/DbxClientV2;

    .line 80
    sget-object v3, Lorg/gnucash/android/export/DropboxHelper;->sDbxClient:Lcom/dropbox/core/v2/DbxClientV2;

    goto :goto_0
.end method

.method public static hasToken()Z
    .locals 5

    .prologue
    .line 88
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 89
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 90
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const v3, 0x7f0f00a5

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "accessToken":Ljava/lang/String;
    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static retrieveAndSaveToken()Ljava/lang/String;
    .locals 6

    .prologue
    .line 49
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    .line 50
    .local v2, "context":Landroid/content/Context;
    invoke-static {v2}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 51
    .local v4, "sharedPrefs":Landroid/content/SharedPreferences;
    const v5, 0x7f0f00a5

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "keyAccessToken":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "accessToken":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 60
    .end local v0    # "accessToken":Ljava/lang/String;
    .local v1, "accessToken":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 56
    .end local v1    # "accessToken":Ljava/lang/String;
    .restart local v0    # "accessToken":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/dropbox/core/android/Auth;->getOAuth2Token()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 58
    invoke-interface {v5, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 59
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object v1, v0

    .line 60
    .end local v0    # "accessToken":Ljava/lang/String;
    .restart local v1    # "accessToken":Ljava/lang/String;
    goto :goto_0
.end method
