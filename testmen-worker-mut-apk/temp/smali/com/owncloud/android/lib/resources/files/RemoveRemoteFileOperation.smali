.class public Lcom/owncloud/android/lib/resources/files/RemoveRemoteFileOperation;
.super Lcom/owncloud/android/lib/common/operations/RemoteOperation;
.source "RemoveRemoteFileOperation.java"


# static fields
.field private static final REMOVE_CONNECTION_TIMEOUT:I = 0x1388

.field private static final REMOVE_READ_TIMEOUT:I = 0x7530

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mRemotePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/owncloud/android/lib/resources/files/RemoveRemoteFileOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/resources/files/RemoveRemoteFileOperation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "remotePath"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/owncloud/android/lib/common/operations/RemoteOperation;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/files/RemoveRemoteFileOperation;->mRemotePath:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method protected run(Lcom/owncloud/android/lib/common/OwnCloudClient;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .locals 9
    .param p1, "client"    # Lcom/owncloud/android/lib/common/OwnCloudClient;

    .prologue
    .line 66
    const/4 v3, 0x0

    .line 67
    .local v3, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    const/4 v0, 0x0

    .line 70
    .local v0, "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    :try_start_0
    new-instance v1, Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getWebdavUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/owncloud/android/lib/resources/files/RemoveRemoteFileOperation;->mRemotePath:Ljava/lang/String;

    invoke-static {v7}, Lcom/owncloud/android/lib/common/network/WebdavUtils;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .end local v0    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    .local v1, "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    const/16 v6, 0x7530

    const/16 v7, 0x1388

    :try_start_1
    invoke-virtual {p1, v1, v6, v7}, Lcom/owncloud/android/lib/common/OwnCloudClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethodBase;II)I

    move-result v5

    .line 73
    .local v5, "status":I
    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;->getResponseBodyAsString()Ljava/lang/String;

    .line 74
    new-instance v4, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    .line 75
    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;->succeeded()Z

    move-result v6

    if-nez v6, :cond_0

    const/16 v6, 0x194

    if-ne v5, v6, :cond_2

    :cond_0
    const/4 v6, 0x1

    :goto_0
    invoke-direct {v4, v6, v1}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZLorg/apache/commons/httpclient/HttpMethod;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    .end local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v4, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_2
    sget-object v6, Lcom/owncloud/android/lib/resources/files/RemoveRemoteFileOperation;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Remove "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/owncloud/android/lib/resources/files/RemoveRemoteFileOperation;->mRemotePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getLogMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/owncloud/android/lib/common/utils/Log_OC;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 85
    if-eqz v1, :cond_4

    .line 86
    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;->releaseConnection()V

    move-object v0, v1

    .end local v1    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    .restart local v0    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    move-object v3, v4

    .line 89
    .end local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .end local v5    # "status":I
    .restart local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :cond_1
    :goto_1
    return-object v3

    .line 75
    .end local v0    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    .restart local v1    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    .restart local v5    # "status":I
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 80
    .end local v1    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    .end local v5    # "status":I
    .restart local v0    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    :catch_0
    move-exception v2

    move-object v4, v3

    .line 81
    .end local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_2
    :try_start_3
    new-instance v3, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    invoke-direct {v3, v2}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 82
    .end local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_4
    sget-object v6, Lcom/owncloud/android/lib/resources/files/RemoveRemoteFileOperation;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Remove "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/owncloud/android/lib/resources/files/RemoveRemoteFileOperation;->mRemotePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getLogMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 85
    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {v0}, Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;->releaseConnection()V

    goto :goto_1

    .line 85
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v0, :cond_3

    .line 86
    invoke-virtual {v0}, Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;->releaseConnection()V

    :cond_3
    throw v6

    .line 85
    .end local v0    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    .restart local v1    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    .restart local v0    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    goto :goto_3

    .end local v0    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    .end local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v1    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    .restart local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v5    # "status":I
    :catchall_2
    move-exception v6

    move-object v0, v1

    .end local v1    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    .restart local v0    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    move-object v3, v4

    .end local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_3

    .end local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .end local v5    # "status":I
    .restart local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :catchall_3
    move-exception v6

    move-object v3, v4

    .end local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_3

    .line 80
    .end local v0    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    .restart local v0    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    move-object v4, v3

    .end local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_2

    .end local v0    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    .restart local v1    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    .restart local v5    # "status":I
    :catch_2
    move-exception v2

    move-object v0, v1

    .end local v1    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    .restart local v0    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    goto :goto_2

    .end local v0    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    .restart local v1    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    :cond_4
    move-object v0, v1

    .end local v1    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    .restart local v0    # "delete":Lorg/apache/jackrabbit/webdav/client/methods/DeleteMethod;
    move-object v3, v4

    .end local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_1
.end method
