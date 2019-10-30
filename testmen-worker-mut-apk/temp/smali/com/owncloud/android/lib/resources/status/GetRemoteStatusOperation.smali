.class public Lcom/owncloud/android/lib/resources/status/GetRemoteStatusOperation;
.super Lcom/owncloud/android/lib/common/operations/RemoteOperation;
.source "GetRemoteStatusOperation.java"


# static fields
.field private static final NODE_INSTALLED:Ljava/lang/String; = "installed"

.field private static final NODE_VERSION:Ljava/lang/String; = "version"

.field private static final PROTOCOL_HTTP:Ljava/lang/String; = "http://"

.field private static final PROTOCOL_HTTPS:Ljava/lang/String; = "https://"

.field private static final TAG:Ljava/lang/String;

.field private static final TRY_CONNECTION_TIMEOUT:I = 0xc350


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLatestResult:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/owncloud/android/lib/resources/status/GetRemoteStatusOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/resources/status/GetRemoteStatusOperation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/owncloud/android/lib/common/operations/RemoteOperation;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/status/GetRemoteStatusOperation;->mContext:Landroid/content/Context;

    .line 72
    return-void
.end method

.method private isOnline()Z
    .locals 3

    .prologue
    .line 171
    iget-object v1, p0, Lcom/owncloud/android/lib/resources/status/GetRemoteStatusOperation;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    .line 172
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 173
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 173
    :goto_0
    return v1

    .line 174
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private tryConnection(Lcom/owncloud/android/lib/common/OwnCloudClient;)Z
    .locals 20
    .param p1, "client"    # Lcom/owncloud/android/lib/common/OwnCloudClient;

    .prologue
    .line 75
    const/4 v14, 0x0

    .line 76
    .local v14, "retval":Z
    const/4 v6, 0x0

    .line 77
    .local v6, "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    invoke-virtual/range {p1 .. p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getBaseUri()Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "baseUrlSt":Ljava/lang/String;
    :try_start_0
    new-instance v7, Lorg/apache/commons/httpclient/methods/GetMethod;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/status.php"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Lorg/apache/commons/httpclient/methods/GetMethod;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 81
    .end local v6    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .local v7, "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :try_start_1
    invoke-static {}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getDefaultParams()Lorg/apache/commons/httpclient/params/HttpParams;

    move-result-object v11

    .line 82
    .local v11, "params":Lorg/apache/commons/httpclient/params/HttpParams;
    const-string v17, "http.useragent"

    invoke-static {}, Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory;->getUserAgent()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v11, v0, v1}, Lorg/apache/commons/httpclient/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    invoke-virtual {v7}, Lorg/apache/commons/httpclient/methods/GetMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setDefaults(Lorg/apache/commons/httpclient/params/HttpParams;)V

    .line 85
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->setFollowRedirects(Z)V

    .line 86
    const/4 v8, 0x0

    .line 87
    .local v8, "isRedirectToNonSecureConnection":Z
    const v17, 0xc350

    const v18, 0xc350

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v7, v1, v2}, Lcom/owncloud/android/lib/common/OwnCloudClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethodBase;II)I

    move-result v15

    .line 88
    .local v15, "status":I
    new-instance v18, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    const/16 v17, 0xc8

    move/from16 v0, v17

    if-ne v15, v0, :cond_0

    const/16 v17, 0x1

    :goto_0
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-direct {v0, v1, v7}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZLorg/apache/commons/httpclient/HttpMethod;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/owncloud/android/lib/resources/status/GetRemoteStatusOperation;->mLatestResult:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/owncloud/android/lib/resources/status/GetRemoteStatusOperation;->mLatestResult:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getRedirectedLocation()Ljava/lang/String;

    move-result-object v12

    .line 91
    .local v12, "redirectedLocation":Ljava/lang/String;
    :goto_1
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/owncloud/android/lib/resources/status/GetRemoteStatusOperation;->mLatestResult:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    move-object/from16 v17, v0

    .line 92
    invoke-virtual/range {v17 .. v17}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->isSuccess()Z

    move-result v17

    if-nez v17, :cond_3

    .line 94
    const-string v17, "https://"

    .line 95
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    const-string v17, "http://"

    .line 96
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    const/16 v17, 0x1

    :goto_2
    or-int v8, v8, v17

    .line 98
    invoke-virtual {v7}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    .line 99
    new-instance v6, Lorg/apache/commons/httpclient/methods/GetMethod;

    invoke-direct {v6, v12}, Lorg/apache/commons/httpclient/methods/GetMethod;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    .end local v7    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v6    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    const v17, 0xc350

    const v18, 0xc350

    :try_start_2
    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v6, v1, v2}, Lcom/owncloud/android/lib/common/OwnCloudClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethodBase;II)I

    move-result v15

    .line 101
    new-instance v18, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    const/16 v17, 0xc8

    move/from16 v0, v17

    if-ne v15, v0, :cond_2

    const/16 v17, 0x1

    :goto_3
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-direct {v0, v1, v6}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZLorg/apache/commons/httpclient/HttpMethod;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/owncloud/android/lib/resources/status/GetRemoteStatusOperation;->mLatestResult:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/owncloud/android/lib/resources/status/GetRemoteStatusOperation;->mLatestResult:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getRedirectedLocation()Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v12

    move-object v7, v6

    .end local v6    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v7    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    goto :goto_1

    .line 88
    .end local v12    # "redirectedLocation":Ljava/lang/String;
    :cond_0
    const/16 v17, 0x0

    goto :goto_0

    .line 96
    .restart local v12    # "redirectedLocation":Ljava/lang/String;
    :cond_1
    const/16 v17, 0x0

    goto :goto_2

    .line 101
    .end local v7    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v6    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :cond_2
    const/16 v17, 0x0

    goto :goto_3

    .line 105
    .end local v6    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v7    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :cond_3
    :try_start_3
    invoke-virtual {v7}, Lorg/apache/commons/httpclient/methods/GetMethod;->getResponseBodyAsString()Ljava/lang/String;

    move-result-object v13

    .line 106
    .local v13, "response":Ljava/lang/String;
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-ne v15, v0, :cond_9

    .line 107
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 108
    .local v9, "json":Lorg/json/JSONObject;
    const-string v17, "installed"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 109
    new-instance v17, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    sget-object v18, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->INSTANCE_NOT_CONFIGURED:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    invoke-direct/range {v17 .. v18}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/owncloud/android/lib/resources/status/GetRemoteStatusOperation;->mLatestResult:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 152
    .end local v9    # "json":Lorg/json/JSONObject;
    :goto_4
    if-eqz v7, :cond_d

    .line 153
    invoke-virtual {v7}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    move-object v6, v7

    .line 156
    .end local v7    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .end local v8    # "isRedirectToNonSecureConnection":Z
    .end local v11    # "params":Lorg/apache/commons/httpclient/params/HttpParams;
    .end local v12    # "redirectedLocation":Ljava/lang/String;
    .end local v13    # "response":Ljava/lang/String;
    .end local v15    # "status":I
    .restart local v6    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :cond_4
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/owncloud/android/lib/resources/status/GetRemoteStatusOperation;->mLatestResult:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->isSuccess()Z

    move-result v17

    if-eqz v17, :cond_b

    .line 157
    sget-object v17, Lcom/owncloud/android/lib/resources/status/GetRemoteStatusOperation;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Connection check at "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/owncloud/android/lib/resources/status/GetRemoteStatusOperation;->mLatestResult:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getLogMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/owncloud/android/lib/common/utils/Log_OC;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :goto_6
    return v14

    .line 112
    .end local v6    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v7    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v8    # "isRedirectToNonSecureConnection":Z
    .restart local v9    # "json":Lorg/json/JSONObject;
    .restart local v11    # "params":Lorg/apache/commons/httpclient/params/HttpParams;
    .restart local v12    # "redirectedLocation":Ljava/lang/String;
    .restart local v13    # "response":Ljava/lang/String;
    .restart local v15    # "status":I
    :cond_5
    :try_start_4
    const-string v17, "version"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 113
    .local v16, "version":Ljava/lang/String;
    new-instance v10, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;-><init>(Ljava/lang/String;)V

    .line 114
    .local v10, "ocVersion":Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;
    invoke-virtual {v10}, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->isVersionValid()Z

    move-result v17

    if-nez v17, :cond_6

    .line 115
    new-instance v17, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    sget-object v18, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->BAD_OC_VERSION:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    invoke-direct/range {v17 .. v18}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/owncloud/android/lib/resources/status/GetRemoteStatusOperation;->mLatestResult:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 144
    .end local v8    # "isRedirectToNonSecureConnection":Z
    .end local v9    # "json":Lorg/json/JSONObject;
    .end local v10    # "ocVersion":Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;
    .end local v11    # "params":Lorg/apache/commons/httpclient/params/HttpParams;
    .end local v12    # "redirectedLocation":Ljava/lang/String;
    .end local v13    # "response":Ljava/lang/String;
    .end local v15    # "status":I
    .end local v16    # "version":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v6, v7

    .line 145
    .end local v7    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .local v5, "e":Lorg/json/JSONException;
    .restart local v6    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :goto_7
    :try_start_5
    new-instance v17, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    sget-object v18, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->INSTANCE_NOT_CONFIGURED:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    invoke-direct/range {v17 .. v18}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/owncloud/android/lib/resources/status/GetRemoteStatusOperation;->mLatestResult:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 152
    if-eqz v6, :cond_4

    .line 153
    invoke-virtual {v6}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    goto :goto_5

    .line 120
    .end local v5    # "e":Lorg/json/JSONException;
    .end local v6    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v7    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v8    # "isRedirectToNonSecureConnection":Z
    .restart local v9    # "json":Lorg/json/JSONObject;
    .restart local v10    # "ocVersion":Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;
    .restart local v11    # "params":Lorg/apache/commons/httpclient/params/HttpParams;
    .restart local v12    # "redirectedLocation":Ljava/lang/String;
    .restart local v13    # "response":Ljava/lang/String;
    .restart local v15    # "status":I
    .restart local v16    # "version":Ljava/lang/String;
    :cond_6
    if-eqz v8, :cond_7

    .line 121
    :try_start_6
    new-instance v17, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    sget-object v18, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->OK_REDIRECT_TO_NON_SECURE_CONNECTION:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    invoke-direct/range {v17 .. v18}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/owncloud/android/lib/resources/status/GetRemoteStatusOperation;->mLatestResult:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    .line 133
    :goto_8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v4, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/owncloud/android/lib/resources/status/GetRemoteStatusOperation;->mLatestResult:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->setData(Ljava/util/ArrayList;)V

    .line 136
    const/4 v14, 0x1

    goto/16 :goto_4

    .line 126
    .end local v4    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_7
    new-instance v18, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    const-string v17, "https://"

    .line 127
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    sget-object v17, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->OK_SSL:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    :goto_9
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/owncloud/android/lib/resources/status/GetRemoteStatusOperation;->mLatestResult:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_8

    .line 148
    .end local v8    # "isRedirectToNonSecureConnection":Z
    .end local v9    # "json":Lorg/json/JSONObject;
    .end local v10    # "ocVersion":Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;
    .end local v11    # "params":Lorg/apache/commons/httpclient/params/HttpParams;
    .end local v12    # "redirectedLocation":Ljava/lang/String;
    .end local v13    # "response":Ljava/lang/String;
    .end local v15    # "status":I
    .end local v16    # "version":Ljava/lang/String;
    :catch_1
    move-exception v5

    move-object v6, v7

    .line 149
    .end local v7    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .local v5, "e":Ljava/lang/Exception;
    .restart local v6    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :goto_a
    :try_start_7
    new-instance v17, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Ljava/lang/Exception;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/owncloud/android/lib/resources/status/GetRemoteStatusOperation;->mLatestResult:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 152
    if-eqz v6, :cond_4

    .line 153
    invoke-virtual {v6}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    goto/16 :goto_5

    .line 127
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v7    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v8    # "isRedirectToNonSecureConnection":Z
    .restart local v9    # "json":Lorg/json/JSONObject;
    .restart local v10    # "ocVersion":Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;
    .restart local v11    # "params":Lorg/apache/commons/httpclient/params/HttpParams;
    .restart local v12    # "redirectedLocation":Ljava/lang/String;
    .restart local v13    # "response":Ljava/lang/String;
    .restart local v15    # "status":I
    .restart local v16    # "version":Ljava/lang/String;
    :cond_8
    :try_start_8
    sget-object v17, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->OK_NO_SSL:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    goto :goto_9

    .line 141
    .end local v9    # "json":Lorg/json/JSONObject;
    .end local v10    # "ocVersion":Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;
    .end local v16    # "version":Ljava/lang/String;
    :cond_9
    new-instance v17, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    const/16 v18, 0x0

    invoke-virtual {v7}, Lorg/apache/commons/httpclient/methods/GetMethod;->getResponseHeaders()[Lorg/apache/commons/httpclient/Header;

    move-result-object v19

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v15, v2}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZI[Lorg/apache/commons/httpclient/Header;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/owncloud/android/lib/resources/status/GetRemoteStatusOperation;->mLatestResult:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_4

    .line 152
    .end local v8    # "isRedirectToNonSecureConnection":Z
    .end local v11    # "params":Lorg/apache/commons/httpclient/params/HttpParams;
    .end local v12    # "redirectedLocation":Ljava/lang/String;
    .end local v13    # "response":Ljava/lang/String;
    .end local v15    # "status":I
    :catchall_0
    move-exception v17

    move-object v6, v7

    .end local v7    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v6    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :goto_b
    if-eqz v6, :cond_a

    .line 153
    invoke-virtual {v6}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    :cond_a
    throw v17

    .line 159
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/owncloud/android/lib/resources/status/GetRemoteStatusOperation;->mLatestResult:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getException()Ljava/lang/Exception;

    move-result-object v17

    if-eqz v17, :cond_c

    .line 160
    sget-object v17, Lcom/owncloud/android/lib/resources/status/GetRemoteStatusOperation;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Connection check at "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/owncloud/android/lib/resources/status/GetRemoteStatusOperation;->mLatestResult:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getLogMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/owncloud/android/lib/resources/status/GetRemoteStatusOperation;->mLatestResult:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    move-object/from16 v19, v0

    .line 161
    invoke-virtual/range {v19 .. v19}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getException()Ljava/lang/Exception;

    move-result-object v19

    .line 160
    invoke-static/range {v17 .. v19}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 164
    :cond_c
    sget-object v17, Lcom/owncloud/android/lib/resources/status/GetRemoteStatusOperation;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Connection check at "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/owncloud/android/lib/resources/status/GetRemoteStatusOperation;->mLatestResult:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getLogMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 152
    :catchall_1
    move-exception v17

    goto :goto_b

    .line 148
    :catch_2
    move-exception v5

    goto/16 :goto_a

    .line 144
    :catch_3
    move-exception v5

    goto/16 :goto_7

    .end local v6    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v7    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v8    # "isRedirectToNonSecureConnection":Z
    .restart local v11    # "params":Lorg/apache/commons/httpclient/params/HttpParams;
    .restart local v12    # "redirectedLocation":Ljava/lang/String;
    .restart local v13    # "response":Ljava/lang/String;
    .restart local v15    # "status":I
    :cond_d
    move-object v6, v7

    .end local v7    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v6    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    goto/16 :goto_5
.end method


# virtual methods
.method protected run(Lcom/owncloud/android/lib/common/OwnCloudClient;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .locals 4
    .param p1, "client"    # Lcom/owncloud/android/lib/common/OwnCloudClient;

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/owncloud/android/lib/resources/status/GetRemoteStatusOperation;->isOnline()Z

    move-result v2

    if-nez v2, :cond_0

    .line 180
    new-instance v2, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    sget-object v3, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->NO_NETWORK_CONNECTION:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    invoke-direct {v2, v3}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;)V

    .line 195
    :goto_0
    return-object v2

    .line 182
    :cond_0
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getBaseUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "baseUriStr":Ljava/lang/String;
    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 184
    :cond_1
    invoke-direct {p0, p1}, Lcom/owncloud/android/lib/resources/status/GetRemoteStatusOperation;->tryConnection(Lcom/owncloud/android/lib/common/OwnCloudClient;)Z

    .line 195
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/owncloud/android/lib/resources/status/GetRemoteStatusOperation;->mLatestResult:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    goto :goto_0

    .line 187
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/owncloud/android/lib/common/OwnCloudClient;->setBaseUri(Landroid/net/Uri;)V

    .line 188
    invoke-direct {p0, p1}, Lcom/owncloud/android/lib/resources/status/GetRemoteStatusOperation;->tryConnection(Lcom/owncloud/android/lib/common/OwnCloudClient;)Z

    move-result v1

    .line 189
    .local v1, "httpsSuccess":Z
    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/owncloud/android/lib/resources/status/GetRemoteStatusOperation;->mLatestResult:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    invoke-virtual {v2}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->isSslRecoverableException()Z

    move-result v2

    if-nez v2, :cond_2

    .line 190
    sget-object v2, Lcom/owncloud/android/lib/resources/status/GetRemoteStatusOperation;->TAG:Ljava/lang/String;

    const-string v3, "establishing secure connection failed, trying non secure connection"

    invoke-static {v2, v3}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/owncloud/android/lib/common/OwnCloudClient;->setBaseUri(Landroid/net/Uri;)V

    .line 192
    invoke-direct {p0, p1}, Lcom/owncloud/android/lib/resources/status/GetRemoteStatusOperation;->tryConnection(Lcom/owncloud/android/lib/common/OwnCloudClient;)Z

    goto :goto_1
.end method
