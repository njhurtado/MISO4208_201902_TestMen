.class public Lcom/owncloud/android/lib/resources/shares/GetRemoteSharesForFileOperation;
.super Lcom/owncloud/android/lib/common/operations/RemoteOperation;
.source "GetRemoteSharesForFileOperation.java"


# static fields
.field private static final PARAM_PATH:Ljava/lang/String; = "path"

.field private static final PARAM_RESHARES:Ljava/lang/String; = "reshares"

.field private static final PARAM_SUBFILES:Ljava/lang/String; = "subfiles"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mRemoteFilePath:Ljava/lang/String;

.field private mReshares:Z

.field private mSubfiles:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/owncloud/android/lib/resources/shares/GetRemoteSharesForFileOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/resources/shares/GetRemoteSharesForFileOperation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "remoteFilePath"    # Ljava/lang/String;
    .param p2, "reshares"    # Z
    .param p3, "subfiles"    # Z

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/owncloud/android/lib/common/operations/RemoteOperation;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/shares/GetRemoteSharesForFileOperation;->mRemoteFilePath:Ljava/lang/String;

    .line 68
    iput-boolean p2, p0, Lcom/owncloud/android/lib/resources/shares/GetRemoteSharesForFileOperation;->mReshares:Z

    .line 69
    iput-boolean p3, p0, Lcom/owncloud/android/lib/resources/shares/GetRemoteSharesForFileOperation;->mSubfiles:Z

    .line 70
    return-void
.end method

.method private isSuccess(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 126
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected run(Lcom/owncloud/android/lib/common/OwnCloudClient;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .locals 13
    .param p1, "client"    # Lcom/owncloud/android/lib/common/OwnCloudClient;

    .prologue
    .line 74
    const/4 v5, 0x0

    .line 75
    .local v5, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    const/4 v7, -0x1

    .line 77
    .local v7, "status":I
    const/4 v1, 0x0

    .line 81
    .local v1, "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :try_start_0
    new-instance v2, Lorg/apache/commons/httpclient/methods/GetMethod;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getBaseUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/ocs/v2.php/apps/files_sharing/api/v1/shares"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Lorg/apache/commons/httpclient/methods/GetMethod;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .end local v1    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .local v2, "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    const/4 v8, 0x3

    :try_start_1
    new-array v8, v8, [Lorg/apache/commons/httpclient/NameValuePair;

    const/4 v9, 0x0

    new-instance v10, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v11, "path"

    iget-object v12, p0, Lcom/owncloud/android/lib/resources/shares/GetRemoteSharesForFileOperation;->mRemoteFilePath:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-instance v10, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v11, "reshares"

    iget-boolean v12, p0, Lcom/owncloud/android/lib/resources/shares/GetRemoteSharesForFileOperation;->mReshares:Z

    .line 86
    invoke-static {v12}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v10, v8, v9

    const/4 v9, 0x2

    new-instance v10, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v11, "subfiles"

    iget-boolean v12, p0, Lcom/owncloud/android/lib/resources/shares/GetRemoteSharesForFileOperation;->mSubfiles:Z

    .line 87
    invoke-static {v12}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v10, v8, v9

    .line 84
    invoke-virtual {v2, v8}, Lorg/apache/commons/httpclient/methods/GetMethod;->setQueryString([Lorg/apache/commons/httpclient/NameValuePair;)V

    .line 90
    const-string v8, "OCS-APIREQUEST"

    const-string v9, "true"

    invoke-virtual {v2, v8, v9}, Lorg/apache/commons/httpclient/methods/GetMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1, v2}, Lcom/owncloud/android/lib/common/OwnCloudClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    move-result v7

    .line 94
    invoke-direct {p0, v7}, Lcom/owncloud/android/lib/resources/shares/GetRemoteSharesForFileOperation;->isSuccess(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 95
    invoke-virtual {v2}, Lorg/apache/commons/httpclient/methods/GetMethod;->getResponseBodyAsString()Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, "response":Ljava/lang/String;
    new-instance v3, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;

    new-instance v8, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;

    invoke-direct {v8}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;-><init>()V

    invoke-direct {v3, v8}, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;-><init>(Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;)V

    .line 101
    .local v3, "parser":Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getOwnCloudVersion()Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;->setOwnCloudVersion(Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;)V

    .line 102
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getBaseUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;->setServerBaseUri(Landroid/net/Uri;)V

    .line 103
    invoke-virtual {v3, v4}, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;->parse(Ljava/lang/String;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    move-result-object v5

    .line 105
    invoke-virtual {v5}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->isSuccess()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 106
    sget-object v8, Lcom/owncloud/android/lib/resources/shares/GetRemoteSharesForFileOperation;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Got "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getData()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " shares"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 118
    .end local v3    # "parser":Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;
    .end local v4    # "response":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    .line 119
    invoke-virtual {v2}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    move-object v1, v2

    .line 122
    .end local v2    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v1    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :cond_1
    :goto_1
    return-object v5

    .line 110
    .end local v1    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v2    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :cond_2
    :try_start_2
    new-instance v6, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    const/4 v8, 0x0

    invoke-direct {v6, v8, v2}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZLorg/apache/commons/httpclient/HttpMethod;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v6, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    move-object v5, v6

    .end local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_0

    .line 113
    .end local v2    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v1    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :catch_0
    move-exception v0

    move-object v6, v5

    .line 114
    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_2
    :try_start_3
    new-instance v5, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    invoke-direct {v5, v0}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 115
    .end local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_4
    sget-object v8, Lcom/owncloud/android/lib/resources/shares/GetRemoteSharesForFileOperation;->TAG:Ljava/lang/String;

    const-string v9, "Exception while getting shares"

    invoke-static {v8, v9, v0}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 118
    if-eqz v1, :cond_1

    .line 119
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    goto :goto_1

    .line 118
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v1, :cond_3

    .line 119
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    :cond_3
    throw v8

    .line 118
    .end local v1    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v2    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :catchall_1
    move-exception v8

    move-object v1, v2

    .end local v2    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v1    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    goto :goto_3

    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :catchall_2
    move-exception v8

    move-object v5, v6

    .end local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_3

    .line 113
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v2    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v1    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    move-object v6, v5

    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_2

    .end local v1    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .end local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v2    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :cond_4
    move-object v1, v2

    .end local v2    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v1    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    goto :goto_1
.end method
