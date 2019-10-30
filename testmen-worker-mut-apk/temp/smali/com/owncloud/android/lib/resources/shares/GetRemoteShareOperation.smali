.class public Lcom/owncloud/android/lib/resources/shares/GetRemoteShareOperation;
.super Lcom/owncloud/android/lib/common/operations/RemoteOperation;
.source "GetRemoteShareOperation.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mRemoteId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/owncloud/android/lib/resources/shares/GetRemoteShareOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/resources/shares/GetRemoteShareOperation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "remoteId"    # J

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/owncloud/android/lib/common/operations/RemoteOperation;-><init>()V

    .line 48
    iput-wide p1, p0, Lcom/owncloud/android/lib/resources/shares/GetRemoteShareOperation;->mRemoteId:J

    .line 49
    return-void
.end method

.method private isSuccess(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 96
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
    .locals 12
    .param p1, "client"    # Lcom/owncloud/android/lib/common/OwnCloudClient;

    .prologue
    .line 54
    const/4 v5, 0x0

    .line 55
    .local v5, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    const/4 v7, -0x1

    .line 58
    .local v7, "status":I
    const/4 v1, 0x0

    .line 62
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

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/owncloud/android/lib/resources/shares/GetRemoteShareOperation;->mRemoteId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Lorg/apache/commons/httpclient/methods/GetMethod;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .end local v1    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .local v2, "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :try_start_1
    const-string v8, "OCS-APIREQUEST"

    const-string v9, "true"

    invoke-virtual {v2, v8, v9}, Lorg/apache/commons/httpclient/methods/GetMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1, v2}, Lcom/owncloud/android/lib/common/OwnCloudClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    move-result v7

    .line 67
    invoke-direct {p0, v7}, Lcom/owncloud/android/lib/resources/shares/GetRemoteShareOperation;->isSuccess(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 68
    invoke-virtual {v2}, Lorg/apache/commons/httpclient/methods/GetMethod;->getResponseBodyAsString()Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, "response":Ljava/lang/String;
    new-instance v3, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;

    new-instance v8, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;

    invoke-direct {v8}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;-><init>()V

    invoke-direct {v3, v8}, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;-><init>(Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;)V

    .line 74
    .local v3, "parser":Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;->setOneOrMoreSharesRequired(Z)V

    .line 75
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getOwnCloudVersion()Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;->setOwnCloudVersion(Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;)V

    .line 76
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getBaseUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;->setServerBaseUri(Landroid/net/Uri;)V

    .line 77
    invoke-virtual {v3, v4}, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;->parse(Ljava/lang/String;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 88
    .end local v3    # "parser":Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;
    .end local v4    # "response":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_3

    .line 89
    invoke-virtual {v2}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    move-object v1, v2

    .line 92
    .end local v2    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v1    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :goto_1
    return-object v5

    .line 80
    .end local v1    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v2    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :cond_0
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

    .line 83
    .end local v2    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v1    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    new-instance v6, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    invoke-direct {v6, v0}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_4
    sget-object v8, Lcom/owncloud/android/lib/resources/shares/GetRemoteShareOperation;->TAG:Ljava/lang/String;

    const-string v9, "Exception while getting remote shares "

    invoke-static {v8, v9, v0}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 88
    if-eqz v1, :cond_2

    .line 89
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    move-object v5, v6

    .end local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_1

    .line 88
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v1, :cond_1

    .line 89
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    :cond_1
    throw v8

    .line 88
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

    .line 83
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v2    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v1    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    goto :goto_2

    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :cond_2
    move-object v5, v6

    .end local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v2    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :cond_3
    move-object v1, v2

    .end local v2    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v1    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    goto :goto_1
.end method
