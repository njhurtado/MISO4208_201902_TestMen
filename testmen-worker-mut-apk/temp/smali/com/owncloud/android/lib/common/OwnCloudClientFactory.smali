.class public Lcom/owncloud/android/lib/common/OwnCloudClientFactory;
.super Ljava/lang/Object;
.source "OwnCloudClientFactory.java"


# static fields
.field public static final DEFAULT_CONNECTION_TIMEOUT:I = 0xea60

.field public static final DEFAULT_DATA_TIMEOUT:I = 0xea60

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/owncloud/android/lib/common/OwnCloudClientFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/common/OwnCloudClientFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createOwnCloudClient(Landroid/accounts/Account;Landroid/content/Context;)Lcom/owncloud/android/lib/common/OwnCloudClient;
    .locals 13
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "appContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Landroid/accounts/AuthenticatorException;,
            Ljava/io/IOException;,
            Lcom/owncloud/android/lib/common/accounts/AccountUtils$AccountNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 78
    invoke-static {p1, p0}, Lcom/owncloud/android/lib/common/accounts/AccountUtils;->getBaseUrlForAccount(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 79
    .local v2, "baseUri":Landroid/net/Uri;
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 81
    .local v1, "am":Landroid/accounts/AccountManager;
    const-string v12, "oc_supports_oauth2"

    .line 82
    invoke-virtual {v1, p0, v12}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    move v5, v10

    .line 83
    .local v5, "isOauth2":Z
    :goto_0
    const-string v12, "oc_supports_saml_web_sso"

    .line 84
    invoke-virtual {v1, p0, v12}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1

    move v6, v10

    .line 85
    .local v6, "isSamlSso":Z
    :goto_1
    if-nez v6, :cond_2

    move v12, v10

    :goto_2
    invoke-static {v2, p1, v12}, Lcom/owncloud/android/lib/common/OwnCloudClientFactory;->createOwnCloudClient(Landroid/net/Uri;Landroid/content/Context;Z)Lcom/owncloud/android/lib/common/OwnCloudClient;

    move-result-object v3

    .line 87
    .local v3, "client":Lcom/owncloud/android/lib/common/OwnCloudClient;
    invoke-static {p0}, Lcom/owncloud/android/lib/common/accounts/AccountUtils;->getUsernameForAccount(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v8

    .line 88
    .local v8, "username":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 89
    iget-object v10, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 91
    invoke-static {v10}, Lcom/owncloud/android/lib/common/accounts/AccountTypeUtils;->getAuthTokenTypeAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 89
    invoke-virtual {v1, p0, v10, v11}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "accessToken":Ljava/lang/String;
    invoke-static {v0}, Lcom/owncloud/android/lib/common/OwnCloudCredentialsFactory;->newBearerCredentials(Ljava/lang/String;)Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    move-result-object v10

    .line 94
    invoke-virtual {v3, v10}, Lcom/owncloud/android/lib/common/OwnCloudClient;->setCredentials(Lcom/owncloud/android/lib/common/OwnCloudCredentials;)V

    .line 123
    .end local v0    # "accessToken":Ljava/lang/String;
    :goto_3
    invoke-static {p0, v3, p1}, Lcom/owncloud/android/lib/common/accounts/AccountUtils;->restoreCookies(Landroid/accounts/Account;Lcom/owncloud/android/lib/common/OwnCloudClient;Landroid/content/Context;)V

    .line 125
    return-object v3

    .end local v3    # "client":Lcom/owncloud/android/lib/common/OwnCloudClient;
    .end local v5    # "isOauth2":Z
    .end local v6    # "isSamlSso":Z
    .end local v8    # "username":Ljava/lang/String;
    :cond_0
    move v5, v11

    .line 82
    goto :goto_0

    .restart local v5    # "isOauth2":Z
    :cond_1
    move v6, v11

    .line 84
    goto :goto_1

    .restart local v6    # "isSamlSso":Z
    :cond_2
    move v12, v11

    .line 85
    goto :goto_2

    .line 98
    .restart local v3    # "client":Lcom/owncloud/android/lib/common/OwnCloudClient;
    .restart local v8    # "username":Ljava/lang/String;
    :cond_3
    if-eqz v6, :cond_4

    .line 99
    iget-object v10, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 101
    invoke-static {v10}, Lcom/owncloud/android/lib/common/accounts/AccountTypeUtils;->getAuthTokenTypeSamlSessionCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 99
    invoke-virtual {v1, p0, v10, v11}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 105
    .restart local v0    # "accessToken":Ljava/lang/String;
    invoke-static {v8, v0}, Lcom/owncloud/android/lib/common/OwnCloudCredentialsFactory;->newSamlSsoCredentials(Ljava/lang/String;Ljava/lang/String;)Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    move-result-object v10

    .line 104
    invoke-virtual {v3, v10}, Lcom/owncloud/android/lib/common/OwnCloudClient;->setCredentials(Lcom/owncloud/android/lib/common/OwnCloudCredentials;)V

    goto :goto_3

    .line 109
    .end local v0    # "accessToken":Ljava/lang/String;
    :cond_4
    iget-object v12, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 111
    invoke-static {v12}, Lcom/owncloud/android/lib/common/accounts/AccountTypeUtils;->getAuthTokenTypePass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 109
    invoke-virtual {v1, p0, v12, v11}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 114
    .local v7, "password":Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/owncloud/android/lib/common/accounts/AccountUtils;->getServerVersionForAccount(Landroid/accounts/Account;Landroid/content/Context;)Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    move-result-object v9

    .line 116
    .local v9, "version":Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;
    if-eqz v9, :cond_5

    .line 117
    invoke-virtual {v9}, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->isPreemptiveAuthenticationPreferred()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 116
    :goto_4
    invoke-static {v8, v7, v10}, Lcom/owncloud/android/lib/common/OwnCloudCredentialsFactory;->newBasicCredentials(Ljava/lang/String;Ljava/lang/String;Z)Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    move-result-object v4

    .line 119
    .local v4, "credentials":Lcom/owncloud/android/lib/common/OwnCloudCredentials;
    invoke-virtual {v3, v4}, Lcom/owncloud/android/lib/common/OwnCloudClient;->setCredentials(Lcom/owncloud/android/lib/common/OwnCloudCredentials;)V

    goto :goto_3

    .end local v4    # "credentials":Lcom/owncloud/android/lib/common/OwnCloudCredentials;
    :cond_5
    move v10, v11

    .line 117
    goto :goto_4
.end method

.method public static createOwnCloudClient(Landroid/accounts/Account;Landroid/content/Context;Landroid/app/Activity;)Lcom/owncloud/android/lib/common/OwnCloudClient;
    .locals 20
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "currentActivity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Landroid/accounts/AuthenticatorException;,
            Ljava/io/IOException;,
            Lcom/owncloud/android/lib/common/accounts/AccountUtils$AccountNotFoundException;
        }
    .end annotation

    .prologue
    .line 133
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/owncloud/android/lib/common/accounts/AccountUtils;->getBaseUrlForAccount(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 134
    .local v10, "baseUri":Landroid/net/Uri;
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 136
    .local v2, "am":Landroid/accounts/AccountManager;
    const-string v3, "oc_supports_oauth2"

    .line 137
    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v14, 0x1

    .line 138
    .local v14, "isOauth2":Z
    :goto_0
    const-string v3, "oc_supports_saml_web_sso"

    .line 139
    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v15, 0x1

    .line 140
    .local v15, "isSamlSso":Z
    :goto_1
    if-nez v15, :cond_2

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p1

    invoke-static {v10, v0, v3}, Lcom/owncloud/android/lib/common/OwnCloudClientFactory;->createOwnCloudClient(Landroid/net/Uri;Landroid/content/Context;Z)Lcom/owncloud/android/lib/common/OwnCloudClient;

    move-result-object v11

    .line 142
    .local v11, "client":Lcom/owncloud/android/lib/common/OwnCloudClient;
    invoke-static/range {p0 .. p0}, Lcom/owncloud/android/lib/common/accounts/AccountUtils;->getUsernameForAccount(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v18

    .line 143
    .local v18, "username":Ljava/lang/String;
    if-eqz v14, :cond_4

    .line 144
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 146
    invoke-static {v3}, Lcom/owncloud/android/lib/common/accounts/AccountTypeUtils;->getAuthTokenTypeAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v6, p2

    .line 144
    invoke-virtual/range {v2 .. v8}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v13

    .line 152
    .local v13, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    invoke-interface {v13}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/Bundle;

    .line 153
    .local v17, "result":Landroid/os/Bundle;
    const-string v3, "authtoken"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 154
    .local v9, "accessToken":Ljava/lang/String;
    if-nez v9, :cond_3

    new-instance v3, Landroid/accounts/AuthenticatorException;

    const-string v4, "WTF!"

    invoke-direct {v3, v4}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 137
    .end local v9    # "accessToken":Ljava/lang/String;
    .end local v11    # "client":Lcom/owncloud/android/lib/common/OwnCloudClient;
    .end local v13    # "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    .end local v14    # "isOauth2":Z
    .end local v15    # "isSamlSso":Z
    .end local v17    # "result":Landroid/os/Bundle;
    .end local v18    # "username":Ljava/lang/String;
    :cond_0
    const/4 v14, 0x0

    goto :goto_0

    .line 139
    .restart local v14    # "isOauth2":Z
    :cond_1
    const/4 v15, 0x0

    goto :goto_1

    .line 140
    .restart local v15    # "isSamlSso":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 156
    .restart local v9    # "accessToken":Ljava/lang/String;
    .restart local v11    # "client":Lcom/owncloud/android/lib/common/OwnCloudClient;
    .restart local v13    # "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    .restart local v17    # "result":Landroid/os/Bundle;
    .restart local v18    # "username":Ljava/lang/String;
    :cond_3
    invoke-static {v9}, Lcom/owncloud/android/lib/common/OwnCloudCredentialsFactory;->newBearerCredentials(Ljava/lang/String;)Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    move-result-object v3

    .line 155
    invoke-virtual {v11, v3}, Lcom/owncloud/android/lib/common/OwnCloudClient;->setCredentials(Lcom/owncloud/android/lib/common/OwnCloudCredentials;)V

    .line 199
    .end local v9    # "accessToken":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v11, v1}, Lcom/owncloud/android/lib/common/accounts/AccountUtils;->restoreCookies(Landroid/accounts/Account;Lcom/owncloud/android/lib/common/OwnCloudClient;Landroid/content/Context;)V

    .line 201
    return-object v11

    .line 159
    .end local v13    # "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    .end local v17    # "result":Landroid/os/Bundle;
    :cond_4
    if-eqz v15, :cond_6

    .line 160
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 162
    invoke-static {v3}, Lcom/owncloud/android/lib/common/accounts/AccountTypeUtils;->getAuthTokenTypeSamlSessionCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v6, p2

    .line 160
    invoke-virtual/range {v2 .. v8}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v13

    .line 168
    .restart local v13    # "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    invoke-interface {v13}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/Bundle;

    .line 169
    .restart local v17    # "result":Landroid/os/Bundle;
    const-string v3, "authtoken"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 170
    .restart local v9    # "accessToken":Ljava/lang/String;
    if-nez v9, :cond_5

    new-instance v3, Landroid/accounts/AuthenticatorException;

    const-string v4, "WTF!"

    invoke-direct {v3, v4}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 172
    :cond_5
    move-object/from16 v0, v18

    invoke-static {v0, v9}, Lcom/owncloud/android/lib/common/OwnCloudCredentialsFactory;->newSamlSsoCredentials(Ljava/lang/String;Ljava/lang/String;)Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    move-result-object v3

    .line 171
    invoke-virtual {v11, v3}, Lcom/owncloud/android/lib/common/OwnCloudClient;->setCredentials(Lcom/owncloud/android/lib/common/OwnCloudCredentials;)V

    goto :goto_3

    .line 180
    .end local v9    # "accessToken":Ljava/lang/String;
    .end local v13    # "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    .end local v17    # "result":Landroid/os/Bundle;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 182
    invoke-static {v3}, Lcom/owncloud/android/lib/common/accounts/AccountTypeUtils;->getAuthTokenTypePass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v6, p2

    .line 180
    invoke-virtual/range {v2 .. v8}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v13

    .line 188
    .restart local v13    # "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    invoke-interface {v13}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/Bundle;

    .line 189
    .restart local v17    # "result":Landroid/os/Bundle;
    const-string v3, "authtoken"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 191
    .local v16, "password":Ljava/lang/String;
    invoke-static/range {p0 .. p1}, Lcom/owncloud/android/lib/common/accounts/AccountUtils;->getServerVersionForAccount(Landroid/accounts/Account;Landroid/content/Context;)Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    move-result-object v19

    .line 192
    .local v19, "version":Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;
    if-eqz v19, :cond_7

    .line 193
    invoke-virtual/range {v19 .. v19}, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->isPreemptiveAuthenticationPreferred()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    .line 192
    :goto_4
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-static {v0, v1, v3}, Lcom/owncloud/android/lib/common/OwnCloudCredentialsFactory;->newBasicCredentials(Ljava/lang/String;Ljava/lang/String;Z)Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    move-result-object v12

    .line 195
    .local v12, "credentials":Lcom/owncloud/android/lib/common/OwnCloudCredentials;
    invoke-virtual {v11, v12}, Lcom/owncloud/android/lib/common/OwnCloudClient;->setCredentials(Lcom/owncloud/android/lib/common/OwnCloudCredentials;)V

    goto :goto_3

    .line 193
    .end local v12    # "credentials":Lcom/owncloud/android/lib/common/OwnCloudCredentials;
    :cond_7
    const/4 v3, 0x0

    goto :goto_4
.end method

.method public static createOwnCloudClient(Landroid/net/Uri;Landroid/content/Context;Z)Lcom/owncloud/android/lib/common/OwnCloudClient;
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "followRedirects"    # Z

    .prologue
    const v4, 0xea60

    .line 215
    const/4 v2, 0x1

    :try_start_0
    invoke-static {v2, p1}, Lcom/owncloud/android/lib/common/network/NetworkUtils;->registerAdvancedSslContext(ZLandroid/content/Context;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 225
    :goto_0
    new-instance v0, Lcom/owncloud/android/lib/common/OwnCloudClient;

    invoke-static {}, Lcom/owncloud/android/lib/common/network/NetworkUtils;->getMultiThreadedConnManager()Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/owncloud/android/lib/common/OwnCloudClient;-><init>(Landroid/net/Uri;Lorg/apache/commons/httpclient/HttpConnectionManager;)V

    .line 226
    .local v0, "client":Lcom/owncloud/android/lib/common/OwnCloudClient;
    invoke-virtual {v0, v4, v4}, Lcom/owncloud/android/lib/common/OwnCloudClient;->setDefaultTimeouts(II)V

    .line 227
    invoke-virtual {v0, p2}, Lcom/owncloud/android/lib/common/OwnCloudClient;->setFollowRedirects(Z)V

    .line 229
    return-object v0

    .line 216
    .end local v0    # "client":Lcom/owncloud/android/lib/common/OwnCloudClient;
    :catch_0
    move-exception v1

    .line 217
    .local v1, "e":Ljava/security/GeneralSecurityException;
    sget-object v2, Lcom/owncloud/android/lib/common/OwnCloudClientFactory;->TAG:Ljava/lang/String;

    const-string v3, "Advanced SSL Context could not be loaded. Default SSL management in the system will be used for HTTPS connections"

    invoke-static {v2, v3, v1}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 220
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v1

    .line 221
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lcom/owncloud/android/lib/common/OwnCloudClientFactory;->TAG:Ljava/lang/String;

    const-string v3, "The local server truststore could not be read. Default SSL management in the system will be used for HTTPS connections"

    invoke-static {v2, v3, v1}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
