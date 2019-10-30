.class public Lcom/owncloud/android/lib/common/accounts/AccountUtils;
.super Ljava/lang/Object;
.source "AccountUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/owncloud/android/lib/common/accounts/AccountUtils$Constants;,
        Lcom/owncloud/android/lib/common/accounts/AccountUtils$AccountNotFoundException;
    }
.end annotation


# static fields
.field public static final CARDDAV_PATH_2_0:Ljava/lang/String; = "/apps/contacts/carddav.php"

.field public static final CARDDAV_PATH_4_0:Ljava/lang/String; = "/remote/carddav.php"

.field public static final ODAV_PATH:Ljava/lang/String; = "/remote.php/odav"

.field private static final SAML_SSO_PATH:Ljava/lang/String; = "/remote.php/webdav"

.field public static final STATUS_PATH:Ljava/lang/String; = "/status.php"

.field private static final TAG:Ljava/lang/String;

.field public static final WEBDAV_PATH_1_2:Ljava/lang/String; = "/webdav/owncloud.php"

.field public static final WEBDAV_PATH_2_0:Ljava/lang/String; = "/files/webdav.php"

.field public static final WEBDAV_PATH_4_0:Ljava/lang/String; = "/remote.php/webdav"

.field public static final WEBDAV_PATH_9_0:Ljava/lang/String; = "/remote.php/dav"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/owncloud/android/lib/common/accounts/AccountUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/common/accounts/AccountUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAccountName(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "serverBaseUrl"    # Landroid/net/Uri;
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 263
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 268
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "url":Ljava/lang/String;
    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 270
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 272
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "accountName":Ljava/lang/String;
    return-object v0
.end method

.method public static buildAccountNameOld(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "serverBaseUrl"    # Landroid/net/Uri;
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 252
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 255
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "accountName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->getPort()I

    move-result v1

    if-ltz v1, :cond_1

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/Uri;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    :cond_1
    return-object v0
.end method

.method public static constructBasicURLForAccount(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/owncloud/android/lib/common/accounts/AccountUtils$AccountNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 130
    invoke-static {p0, p1}, Lcom/owncloud/android/lib/common/accounts/AccountUtils;->getBaseUrlForAccount(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static constructFullURLForAccount(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/owncloud/android/lib/common/accounts/AccountUtils$AccountNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 101
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 102
    .local v0, "ama":Landroid/accounts/AccountManager;
    const-string v9, "oc_base_url"

    invoke-virtual {v0, p1, v9}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "baseurl":Ljava/lang/String;
    const-string v9, "oc_version"

    invoke-virtual {v0, p1, v9}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 104
    .local v5, "version":Ljava/lang/String;
    const-string v9, "oc_supports_oauth2"

    invoke-virtual {v0, p1, v9}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    move v2, v7

    .line 105
    .local v2, "supportsOAuth":Z
    :goto_0
    const-string v9, "oc_supports_saml_web_sso"

    invoke-virtual {v0, p1, v9}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    move v3, v7

    .line 106
    .local v3, "supportsSamlSso":Z
    :goto_1
    new-instance v4, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    invoke-direct {v4, v5}, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;-><init>(Ljava/lang/String;)V

    .line 107
    .local v4, "ver":Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;
    invoke-static {v4, v2, v3}, Lcom/owncloud/android/lib/common/accounts/AccountUtils;->getWebdavPath(Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;ZZ)Ljava/lang/String;

    move-result-object v6

    .line 109
    .local v6, "webdavpath":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-nez v6, :cond_3

    .line 110
    :cond_0
    new-instance v7, Lcom/owncloud/android/lib/common/accounts/AccountUtils$AccountNotFoundException;

    const-string v8, "Account not found"

    const/4 v9, 0x0

    invoke-direct {v7, p1, v8, v9}, Lcom/owncloud/android/lib/common/accounts/AccountUtils$AccountNotFoundException;-><init>(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .end local v2    # "supportsOAuth":Z
    .end local v3    # "supportsSamlSso":Z
    .end local v4    # "ver":Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;
    .end local v6    # "webdavpath":Ljava/lang/String;
    :cond_1
    move v2, v8

    .line 104
    goto :goto_0

    .restart local v2    # "supportsOAuth":Z
    :cond_2
    move v3, v8

    .line 105
    goto :goto_1

    .line 112
    .restart local v3    # "supportsSamlSso":Z
    .restart local v4    # "ver":Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;
    .restart local v6    # "webdavpath":Ljava/lang/String;
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static getBaseUrlForAccount(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/owncloud/android/lib/common/accounts/AccountUtils$AccountNotFoundException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 143
    .local v0, "ama":Landroid/accounts/AccountManager;
    const-string v2, "oc_base_url"

    invoke-virtual {v0, p1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "baseurl":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 146
    new-instance v2, Lcom/owncloud/android/lib/common/accounts/AccountUtils$AccountNotFoundException;

    const-string v3, "Account not found"

    const/4 v4, 0x0

    invoke-direct {v2, p1, v3, v4}, Lcom/owncloud/android/lib/common/accounts/AccountUtils$AccountNotFoundException;-><init>(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 148
    :cond_0
    return-object v1
.end method

.method public static getCredentialsForAccount(Landroid/content/Context;Landroid/accounts/Account;)Lcom/owncloud/android/lib/common/OwnCloudCredentials;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Landroid/accounts/AuthenticatorException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 198
    const/4 v2, 0x0

    .line 199
    .local v2, "credentials":Lcom/owncloud/android/lib/common/OwnCloudCredentials;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 201
    .local v1, "am":Landroid/accounts/AccountManager;
    const-string v11, "oc_supports_oauth2"

    invoke-virtual {v1, p1, v11}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    move v3, v9

    .line 205
    .local v3, "isOauth2":Z
    :goto_0
    const-string v11, "oc_supports_saml_web_sso"

    invoke-virtual {v1, p1, v11}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    move v4, v9

    .line 209
    .local v4, "isSamlSso":Z
    :goto_1
    invoke-static {p1}, Lcom/owncloud/android/lib/common/accounts/AccountUtils;->getUsernameForAccount(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v7

    .line 210
    .local v7, "username":Ljava/lang/String;
    const-string v9, "oc_version"

    invoke-virtual {v1, p1, v9}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 213
    .local v5, "ocVersion":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 215
    sget-object v8, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->nextcloud_10:Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    .line 220
    .local v8, "version":Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;
    :goto_2
    if-eqz v3, :cond_3

    .line 221
    iget-object v9, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 223
    invoke-static {v9}, Lcom/owncloud/android/lib/common/accounts/AccountTypeUtils;->getAuthTokenTypeAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 221
    invoke-virtual {v1, p1, v9, v10}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "accessToken":Ljava/lang/String;
    invoke-static {v0}, Lcom/owncloud/android/lib/common/OwnCloudCredentialsFactory;->newBearerCredentials(Ljava/lang/String;)Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    move-result-object v2

    .line 246
    .end local v0    # "accessToken":Ljava/lang/String;
    :goto_3
    return-object v2

    .end local v3    # "isOauth2":Z
    .end local v4    # "isSamlSso":Z
    .end local v5    # "ocVersion":Ljava/lang/String;
    .end local v7    # "username":Ljava/lang/String;
    .end local v8    # "version":Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;
    :cond_0
    move v3, v10

    .line 201
    goto :goto_0

    .restart local v3    # "isOauth2":Z
    :cond_1
    move v4, v10

    .line 205
    goto :goto_1

    .line 217
    .restart local v4    # "isSamlSso":Z
    .restart local v5    # "ocVersion":Ljava/lang/String;
    .restart local v7    # "username":Ljava/lang/String;
    :cond_2
    new-instance v8, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    invoke-direct {v8, v5}, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;-><init>(Ljava/lang/String;)V

    .restart local v8    # "version":Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;
    goto :goto_2

    .line 228
    :cond_3
    if-eqz v4, :cond_4

    .line 229
    iget-object v9, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 231
    invoke-static {v9}, Lcom/owncloud/android/lib/common/accounts/AccountTypeUtils;->getAuthTokenTypeSamlSessionCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 229
    invoke-virtual {v1, p1, v9, v10}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 234
    .restart local v0    # "accessToken":Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/owncloud/android/lib/common/OwnCloudCredentialsFactory;->newSamlSsoCredentials(Ljava/lang/String;Ljava/lang/String;)Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    move-result-object v2

    .line 236
    goto :goto_3

    .line 237
    .end local v0    # "accessToken":Ljava/lang/String;
    :cond_4
    iget-object v9, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 239
    invoke-static {v9}, Lcom/owncloud/android/lib/common/accounts/AccountTypeUtils;->getAuthTokenTypePass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 237
    invoke-virtual {v1, p1, v9, v10}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 243
    .local v6, "password":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->isPreemptiveAuthenticationPreferred()Z

    move-result v9

    .line 242
    invoke-static {v7, v6, v9}, Lcom/owncloud/android/lib/common/OwnCloudCredentialsFactory;->newBasicCredentials(Ljava/lang/String;Ljava/lang/String;Z)Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    move-result-object v2

    goto :goto_3
.end method

.method public static getServerVersionForAccount(Landroid/accounts/Account;Landroid/content/Context;)Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;
    .locals 7
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 176
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 177
    .local v0, "ama":Landroid/accounts/AccountManager;
    const/4 v2, 0x0

    .line 179
    .local v2, "version":Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;
    :try_start_0
    const-string v5, "oc_version"

    invoke-virtual {v0, p0, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, "versionString":Ljava/lang/String;
    new-instance v3, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    invoke-direct {v3, v4}, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "version":Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;
    .local v3, "version":Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;
    move-object v2, v3

    .line 185
    .end local v3    # "version":Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;
    .end local v4    # "versionString":Ljava/lang/String;
    .restart local v2    # "version":Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;
    :goto_0
    return-object v2

    .line 182
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/owncloud/android/lib/common/accounts/AccountUtils;->TAG:Ljava/lang/String;

    const-string v6, "Couldn\'t get a the server version for an account"

    invoke-static {v5, v6, v1}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getUsernameForAccount(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 6
    .param p0, "account"    # Landroid/accounts/Account;

    .prologue
    .line 159
    const/4 v1, 0x0

    .line 161
    .local v1, "username":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/16 v5, 0x40

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 165
    :goto_0
    return-object v1

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/owncloud/android/lib/common/accounts/AccountUtils;->TAG:Ljava/lang/String;

    const-string v3, "Couldn\'t get a username for the given account"

    invoke-static {v2, v3, v0}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getWebdavPath(Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;ZZ)Ljava/lang/String;
    .locals 1
    .param p0, "version"    # Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;
    .param p1, "supportsOAuth"    # Z
    .param p2, "supportsSamlSso"    # Z

    .prologue
    .line 70
    if-eqz p0, :cond_5

    .line 71
    if-eqz p1, :cond_0

    .line 72
    const-string v0, "/remote.php/odav"

    .line 86
    :goto_0
    return-object v0

    .line 74
    :cond_0
    if-eqz p2, :cond_1

    .line 75
    const-string v0, "/remote.php/webdav"

    goto :goto_0

    .line 78
    :cond_1
    sget-object v0, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->owncloud_v4:Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    invoke-virtual {p0, v0}, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->compareTo(Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 79
    const-string v0, "/remote.php/webdav"

    goto :goto_0

    .line 80
    :cond_2
    sget-object v0, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->owncloud_v3:Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    invoke-virtual {p0, v0}, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->compareTo(Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;)I

    move-result v0

    if-gez v0, :cond_3

    sget-object v0, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->owncloud_v2:Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    .line 81
    invoke-virtual {p0, v0}, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->compareTo(Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;)I

    move-result v0

    if-ltz v0, :cond_4

    .line 82
    :cond_3
    const-string v0, "/files/webdav.php"

    goto :goto_0

    .line 83
    :cond_4
    sget-object v0, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->owncloud_v1:Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    invoke-virtual {p0, v0}, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->compareTo(Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;)I

    move-result v0

    if-ltz v0, :cond_5

    .line 84
    const-string v0, "/webdav/owncloud.php"

    goto :goto_0

    .line 86
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static restoreCookies(Landroid/accounts/Account;Lcom/owncloud/android/lib/common/OwnCloudClient;Landroid/content/Context;)V
    .locals 11
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "client"    # Lcom/owncloud/android/lib/common/OwnCloudClient;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 301
    sget-object v8, Lcom/owncloud/android/lib/common/accounts/AccountUtils;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Restoring cookies for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 306
    .local v0, "am":Landroid/accounts/AccountManager;
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getBaseUri()Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getBaseUri()Landroid/net/Uri;

    move-result-object v7

    .line 308
    .local v7, "serverUri":Landroid/net/Uri;
    :goto_0
    const/4 v3, 0x0

    .line 310
    .local v3, "cookiesString":Ljava/lang/String;
    :try_start_0
    const-string v8, "oc_account_cookies"

    invoke-virtual {v0, p0, v8}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 315
    :goto_1
    if-eqz v3, :cond_1

    .line 316
    const-string v8, ";"

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, "cookies":[Ljava/lang/String;
    array-length v8, v2

    if-lez v8, :cond_1

    .line 318
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v8, v2

    if-ge v6, v8, :cond_1

    .line 319
    new-instance v1, Lorg/apache/commons/httpclient/Cookie;

    invoke-direct {v1}, Lorg/apache/commons/httpclient/Cookie;-><init>()V

    .line 320
    .local v1, "cookie":Lorg/apache/commons/httpclient/Cookie;
    aget-object v8, v2, v6

    const/16 v9, 0x3d

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 321
    .local v5, "equalPos":I
    aget-object v8, v2, v6

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/apache/commons/httpclient/Cookie;->setName(Ljava/lang/String;)V

    .line 322
    aget-object v8, v2, v6

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/apache/commons/httpclient/Cookie;->setValue(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/apache/commons/httpclient/Cookie;->setDomain(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/apache/commons/httpclient/Cookie;->setPath(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getState()Lorg/apache/commons/httpclient/HttpState;

    move-result-object v8

    invoke-virtual {v8, v1}, Lorg/apache/commons/httpclient/HttpState;->addCookie(Lorg/apache/commons/httpclient/Cookie;)V

    .line 318
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 306
    .end local v1    # "cookie":Lorg/apache/commons/httpclient/Cookie;
    .end local v2    # "cookies":[Ljava/lang/String;
    .end local v3    # "cookiesString":Ljava/lang/String;
    .end local v5    # "equalPos":I
    .end local v6    # "i":I
    .end local v7    # "serverUri":Landroid/net/Uri;
    :cond_0
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getWebdavUri()Landroid/net/Uri;

    move-result-object v7

    goto :goto_0

    .line 311
    .restart local v3    # "cookiesString":Ljava/lang/String;
    .restart local v7    # "serverUri":Landroid/net/Uri;
    :catch_0
    move-exception v4

    .line 312
    .local v4, "e":Ljava/lang/SecurityException;
    sget-object v8, Lcom/owncloud/android/lib/common/accounts/AccountUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 330
    .end local v4    # "e":Ljava/lang/SecurityException;
    :cond_1
    return-void
.end method

.method public static restoreCookies(Ljava/lang/String;Lcom/owncloud/android/lib/common/OwnCloudClient;Landroid/content/Context;)V
    .locals 7
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "client"    # Lcom/owncloud/android/lib/common/OwnCloudClient;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 339
    sget-object v4, Lcom/owncloud/android/lib/common/accounts/AccountUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restoring cookies for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    .line 345
    .local v3, "am":Landroid/accounts/AccountManager;
    const/4 v1, 0x0

    .line 346
    .local v1, "account":Landroid/accounts/Account;
    invoke-virtual {v3}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v2

    .line 347
    .local v2, "accounts":[Landroid/accounts/Account;
    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v2, v4

    .line 348
    .local v0, "a":Landroid/accounts/Account;
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 349
    move-object v1, v0

    .line 355
    .end local v0    # "a":Landroid/accounts/Account;
    :cond_0
    if-eqz v1, :cond_1

    .line 356
    invoke-static {v1, p1, p2}, Lcom/owncloud/android/lib/common/accounts/AccountUtils;->restoreCookies(Landroid/accounts/Account;Lcom/owncloud/android/lib/common/OwnCloudClient;Landroid/content/Context;)V

    .line 358
    :cond_1
    return-void

    .line 347
    .restart local v0    # "a":Landroid/accounts/Account;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static saveClient(Lcom/owncloud/android/lib/common/OwnCloudClient;Landroid/accounts/Account;Landroid/content/Context;)V
    .locals 3
    .param p0, "client"    # Lcom/owncloud/android/lib/common/OwnCloudClient;
    .param p1, "savedAccount"    # Landroid/accounts/Account;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 280
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 282
    .local v0, "ac":Landroid/accounts/AccountManager;
    if-eqz p0, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getCookiesString()Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "cookiesString":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 285
    const-string v2, "oc_account_cookies"

    invoke-virtual {v0, p1, v2, v1}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .end local v1    # "cookiesString":Ljava/lang/String;
    :cond_0
    return-void
.end method
