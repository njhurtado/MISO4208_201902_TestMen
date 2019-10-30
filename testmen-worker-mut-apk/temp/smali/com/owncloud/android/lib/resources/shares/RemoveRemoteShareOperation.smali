.class public Lcom/owncloud/android/lib/resources/shares/RemoveRemoteShareOperation;
.super Lcom/owncloud/android/lib/common/operations/RemoteOperation;
.source "RemoveRemoteShareOperation.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mRemoteShareId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/owncloud/android/lib/resources/shares/RemoveRemoteShareOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/resources/shares/RemoveRemoteShareOperation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "remoteShareId"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/owncloud/android/lib/common/operations/RemoteOperation;-><init>()V

    .line 54
    iput p1, p0, Lcom/owncloud/android/lib/resources/shares/RemoveRemoteShareOperation;->mRemoteShareId:I

    .line 56
    return-void
.end method

.method private isSuccess(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 100
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
    .line 60
    const/4 v6, 0x0

    .line 61
    .local v6, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    const/4 v8, -0x1

    .line 63
    .local v8, "status":I
    const/4 v0, 0x0

    .line 66
    .local v0, "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/owncloud/android/lib/resources/shares/RemoveRemoteShareOperation;->mRemoteShareId:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "id":Ljava/lang/String;
    new-instance v1, Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getBaseUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/ocs/v2.php/apps/files_sharing/api/v1/shares"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .end local v0    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    .local v1, "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    :try_start_1
    const-string v9, "OCS-APIREQUEST"

    const-string v10, "true"

    invoke-virtual {v1, v9, v10}, Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1, v1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    move-result v8

    .line 73
    invoke-direct {p0, v8}, Lcom/owncloud/android/lib/resources/shares/RemoveRemoteShareOperation;->isSuccess(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 74
    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;->getResponseBodyAsString()Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, "response":Ljava/lang/String;
    new-instance v4, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;

    new-instance v9, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;

    invoke-direct {v9}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;-><init>()V

    invoke-direct {v4, v9}, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;-><init>(Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;)V

    .line 80
    .local v4, "parser":Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;
    invoke-virtual {v4, v5}, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;->parse(Ljava/lang/String;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    move-result-object v6

    .line 82
    sget-object v9, Lcom/owncloud/android/lib/resources/shares/RemoveRemoteShareOperation;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unshare "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getLogMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 92
    .end local v4    # "parser":Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;
    .end local v5    # "response":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_3

    .line 93
    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;->releaseConnection()V

    move-object v0, v1

    .line 95
    .end local v1    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    .end local v3    # "id":Ljava/lang/String;
    .restart local v0    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    :cond_0
    :goto_1
    return-object v6

    .line 85
    .end local v0    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    .restart local v1    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    .restart local v3    # "id":Ljava/lang/String;
    :cond_1
    :try_start_2
    new-instance v7, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    const/4 v9, 0x0

    invoke-direct {v7, v9, v1}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZLorg/apache/commons/httpclient/HttpMethod;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v7, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    move-object v6, v7

    .end local v7    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_0

    .line 87
    .end local v1    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    .end local v3    # "id":Ljava/lang/String;
    .restart local v0    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    :catch_0
    move-exception v2

    move-object v7, v6

    .line 88
    .end local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v7    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_2
    :try_start_3
    new-instance v6, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    invoke-direct {v6, v2}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 89
    .end local v7    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_4
    sget-object v9, Lcom/owncloud/android/lib/resources/shares/RemoveRemoteShareOperation;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unshare Link Exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getLogMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 92
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;->releaseConnection()V

    goto :goto_1

    .line 92
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_3
    if-eqz v0, :cond_2

    .line 93
    invoke-virtual {v0}, Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;->releaseConnection()V

    :cond_2
    throw v9

    .line 92
    .end local v0    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    .restart local v1    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    .restart local v3    # "id":Ljava/lang/String;
    :catchall_1
    move-exception v9

    move-object v0, v1

    .end local v1    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    .restart local v0    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    goto :goto_3

    .end local v3    # "id":Ljava/lang/String;
    .end local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v2    # "e":Ljava/lang/Exception;
    .restart local v7    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :catchall_2
    move-exception v9

    move-object v6, v7

    .end local v7    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_3

    .line 87
    .end local v0    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    .restart local v3    # "id":Ljava/lang/String;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    .restart local v0    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    move-object v7, v6

    .end local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v7    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_2

    .end local v0    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    .end local v7    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v1    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    .restart local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :cond_3
    move-object v0, v1

    .end local v1    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    .restart local v0    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    goto :goto_1
.end method
