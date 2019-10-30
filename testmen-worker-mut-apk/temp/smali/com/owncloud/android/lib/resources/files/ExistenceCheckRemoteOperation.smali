.class public Lcom/owncloud/android/lib/resources/files/ExistenceCheckRemoteOperation;
.super Lcom/owncloud/android/lib/common/operations/RemoteOperation;
.source "ExistenceCheckRemoteOperation.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final TIMEOUT:I = 0xc350


# instance fields
.field private mPath:Ljava/lang/String;

.field private mRedirectionPath:Lcom/owncloud/android/lib/common/network/RedirectionPath;

.field private mSuccessIfAbsent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/owncloud/android/lib/resources/files/ExistenceCheckRemoteOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/resources/files/ExistenceCheckRemoteOperation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 0
    .param p1, "remotePath"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "successIfAbsent"    # Z

    .prologue
    .line 80
    invoke-direct {p0, p1, p3}, Lcom/owncloud/android/lib/resources/files/ExistenceCheckRemoteOperation;-><init>(Ljava/lang/String;Z)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "remotePath"    # Ljava/lang/String;
    .param p2, "successIfAbsent"    # Z

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/owncloud/android/lib/common/operations/RemoteOperation;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/files/ExistenceCheckRemoteOperation;->mRedirectionPath:Lcom/owncloud/android/lib/common/network/RedirectionPath;

    .line 66
    if-eqz p1, :cond_0

    .end local p1    # "remotePath":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/files/ExistenceCheckRemoteOperation;->mPath:Ljava/lang/String;

    .line 67
    iput-boolean p2, p0, Lcom/owncloud/android/lib/resources/files/ExistenceCheckRemoteOperation;->mSuccessIfAbsent:Z

    .line 68
    return-void

    .line 66
    .restart local p1    # "remotePath":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method


# virtual methods
.method public getRedirectionPath()Lcom/owncloud/android/lib/common/network/RedirectionPath;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/files/ExistenceCheckRemoteOperation;->mRedirectionPath:Lcom/owncloud/android/lib/common/network/RedirectionPath;

    return-object v0
.end method

.method protected run(Lcom/owncloud/android/lib/common/OwnCloudClient;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .locals 11
    .param p1, "client"    # Lcom/owncloud/android/lib/common/OwnCloudClient;

    .prologue
    const/4 v7, 0x0

    .line 85
    const/4 v4, 0x0

    .line 86
    .local v4, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    const/4 v1, 0x0

    .line 87
    .local v1, "head":Lorg/apache/commons/httpclient/methods/HeadMethod;
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getFollowRedirects()Z

    move-result v3

    .line 89
    .local v3, "previousFollowRedirects":Z
    :try_start_0
    new-instance v2, Lorg/apache/commons/httpclient/methods/HeadMethod;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getWebdavUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/owncloud/android/lib/resources/files/ExistenceCheckRemoteOperation;->mPath:Ljava/lang/String;

    invoke-static {v9}, Lcom/owncloud/android/lib/common/network/WebdavUtils;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Lorg/apache/commons/httpclient/methods/HeadMethod;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .end local v1    # "head":Lorg/apache/commons/httpclient/methods/HeadMethod;
    .local v2, "head":Lorg/apache/commons/httpclient/methods/HeadMethod;
    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {p1, v8}, Lcom/owncloud/android/lib/common/OwnCloudClient;->setFollowRedirects(Z)V

    .line 91
    const v8, 0xc350

    const v9, 0xc350

    invoke-virtual {p1, v2, v8, v9}, Lcom/owncloud/android/lib/common/OwnCloudClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethodBase;II)I

    move-result v6

    .line 92
    .local v6, "status":I
    if-eqz v3, :cond_0

    .line 93
    invoke-virtual {p1, v2}, Lcom/owncloud/android/lib/common/OwnCloudClient;->followRedirection(Lorg/apache/commons/httpclient/HttpMethod;)Lcom/owncloud/android/lib/common/network/RedirectionPath;

    move-result-object v8

    iput-object v8, p0, Lcom/owncloud/android/lib/resources/files/ExistenceCheckRemoteOperation;->mRedirectionPath:Lcom/owncloud/android/lib/common/network/RedirectionPath;

    .line 94
    iget-object v8, p0, Lcom/owncloud/android/lib/resources/files/ExistenceCheckRemoteOperation;->mRedirectionPath:Lcom/owncloud/android/lib/common/network/RedirectionPath;

    invoke-virtual {v8}, Lcom/owncloud/android/lib/common/network/RedirectionPath;->getLastStatus()I

    move-result v6

    .line 96
    :cond_0
    invoke-virtual {v2}, Lorg/apache/commons/httpclient/methods/HeadMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/owncloud/android/lib/common/OwnCloudClient;->exhaustResponse(Ljava/io/InputStream;)V

    .line 97
    const/16 v8, 0xc8

    if-ne v6, v8, :cond_1

    iget-boolean v8, p0, Lcom/owncloud/android/lib/resources/files/ExistenceCheckRemoteOperation;->mSuccessIfAbsent:Z

    if-eqz v8, :cond_2

    :cond_1
    const/16 v8, 0x194

    if-ne v6, v8, :cond_3

    iget-boolean v8, p0, Lcom/owncloud/android/lib/resources/files/ExistenceCheckRemoteOperation;->mSuccessIfAbsent:Z

    if-eqz v8, :cond_3

    :cond_2
    const/4 v7, 0x1

    .line 99
    .local v7, "success":Z
    :cond_3
    new-instance v5, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    .line 102
    invoke-virtual {v2}, Lorg/apache/commons/httpclient/methods/HeadMethod;->getStatusText()Ljava/lang/String;

    move-result-object v8

    .line 103
    invoke-virtual {v2}, Lorg/apache/commons/httpclient/methods/HeadMethod;->getResponseHeaders()[Lorg/apache/commons/httpclient/Header;

    move-result-object v9

    invoke-direct {v5, v7, v6, v8, v9}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZILjava/lang/String;[Lorg/apache/commons/httpclient/Header;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    .end local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v5, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_2
    sget-object v9, Lcom/owncloud/android/lib/resources/files/ExistenceCheckRemoteOperation;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Existence check for "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getWebdavUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/owncloud/android/lib/resources/files/ExistenceCheckRemoteOperation;->mPath:Ljava/lang/String;

    .line 106
    invoke-static {v10}, Lcom/owncloud/android/lib/common/network/WebdavUtils;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " targeting for "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v8, p0, Lcom/owncloud/android/lib/resources/files/ExistenceCheckRemoteOperation;->mSuccessIfAbsent:Z

    if-eqz v8, :cond_5

    const-string v8, " absence "

    :goto_0
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "finished with HTTP status "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v7, :cond_6

    const-string v8, "(FAIL)"

    :goto_1
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 105
    invoke-static {v9, v8}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 118
    if-eqz v2, :cond_4

    .line 119
    invoke-virtual {v2}, Lorg/apache/commons/httpclient/methods/HeadMethod;->releaseConnection()V

    .line 120
    :cond_4
    invoke-virtual {p1, v3}, Lcom/owncloud/android/lib/common/OwnCloudClient;->setFollowRedirects(Z)V

    move-object v1, v2

    .end local v2    # "head":Lorg/apache/commons/httpclient/methods/HeadMethod;
    .restart local v1    # "head":Lorg/apache/commons/httpclient/methods/HeadMethod;
    move-object v4, v5

    .line 122
    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .end local v6    # "status":I
    .end local v7    # "success":Z
    .restart local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_2
    return-object v4

    .line 106
    .end local v1    # "head":Lorg/apache/commons/httpclient/methods/HeadMethod;
    .end local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v2    # "head":Lorg/apache/commons/httpclient/methods/HeadMethod;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v6    # "status":I
    .restart local v7    # "success":Z
    :cond_5
    :try_start_3
    const-string v8, " existence "

    goto :goto_0

    :cond_6
    const-string v8, ""
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    .line 110
    .end local v2    # "head":Lorg/apache/commons/httpclient/methods/HeadMethod;
    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .end local v6    # "status":I
    .end local v7    # "success":Z
    .restart local v1    # "head":Lorg/apache/commons/httpclient/methods/HeadMethod;
    .restart local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :catch_0
    move-exception v0

    move-object v5, v4

    .line 111
    .end local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_3
    :try_start_4
    new-instance v4, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    invoke-direct {v4, v0}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 112
    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_5
    sget-object v9, Lcom/owncloud/android/lib/resources/files/ExistenceCheckRemoteOperation;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Existence check for "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getWebdavUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/owncloud/android/lib/resources/files/ExistenceCheckRemoteOperation;->mPath:Ljava/lang/String;

    .line 113
    invoke-static {v10}, Lcom/owncloud/android/lib/common/network/WebdavUtils;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " targeting for "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v8, p0, Lcom/owncloud/android/lib/resources/files/ExistenceCheckRemoteOperation;->mSuccessIfAbsent:Z

    if-eqz v8, :cond_8

    const-string v8, " absence "

    :goto_4
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ": "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 115
    invoke-virtual {v4}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getLogMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getException()Ljava/lang/Exception;

    move-result-object v10

    .line 112
    invoke-static {v9, v8, v10}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 118
    if-eqz v1, :cond_7

    .line 119
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/methods/HeadMethod;->releaseConnection()V

    .line 120
    :cond_7
    invoke-virtual {p1, v3}, Lcom/owncloud/android/lib/common/OwnCloudClient;->setFollowRedirects(Z)V

    goto :goto_2

    .line 113
    :cond_8
    :try_start_6
    const-string v8, " existence "
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 118
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v1, :cond_9

    .line 119
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/methods/HeadMethod;->releaseConnection()V

    .line 120
    :cond_9
    invoke-virtual {p1, v3}, Lcom/owncloud/android/lib/common/OwnCloudClient;->setFollowRedirects(Z)V

    throw v8

    .line 118
    .end local v1    # "head":Lorg/apache/commons/httpclient/methods/HeadMethod;
    .restart local v2    # "head":Lorg/apache/commons/httpclient/methods/HeadMethod;
    :catchall_1
    move-exception v8

    move-object v1, v2

    .end local v2    # "head":Lorg/apache/commons/httpclient/methods/HeadMethod;
    .restart local v1    # "head":Lorg/apache/commons/httpclient/methods/HeadMethod;
    goto :goto_5

    .end local v1    # "head":Lorg/apache/commons/httpclient/methods/HeadMethod;
    .end local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v2    # "head":Lorg/apache/commons/httpclient/methods/HeadMethod;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v6    # "status":I
    .restart local v7    # "success":Z
    :catchall_2
    move-exception v8

    move-object v1, v2

    .end local v2    # "head":Lorg/apache/commons/httpclient/methods/HeadMethod;
    .restart local v1    # "head":Lorg/apache/commons/httpclient/methods/HeadMethod;
    move-object v4, v5

    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_5

    .end local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .end local v6    # "status":I
    .end local v7    # "success":Z
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :catchall_3
    move-exception v8

    move-object v4, v5

    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_5

    .line 110
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "head":Lorg/apache/commons/httpclient/methods/HeadMethod;
    .restart local v2    # "head":Lorg/apache/commons/httpclient/methods/HeadMethod;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "head":Lorg/apache/commons/httpclient/methods/HeadMethod;
    .restart local v1    # "head":Lorg/apache/commons/httpclient/methods/HeadMethod;
    move-object v5, v4

    .end local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_3

    .end local v1    # "head":Lorg/apache/commons/httpclient/methods/HeadMethod;
    .restart local v2    # "head":Lorg/apache/commons/httpclient/methods/HeadMethod;
    .restart local v6    # "status":I
    .restart local v7    # "success":Z
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2    # "head":Lorg/apache/commons/httpclient/methods/HeadMethod;
    .restart local v1    # "head":Lorg/apache/commons/httpclient/methods/HeadMethod;
    goto :goto_3
.end method

.method public wasRedirected()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/files/ExistenceCheckRemoteOperation;->mRedirectionPath:Lcom/owncloud/android/lib/common/network/RedirectionPath;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/owncloud/android/lib/resources/files/ExistenceCheckRemoteOperation;->mRedirectionPath:Lcom/owncloud/android/lib/common/network/RedirectionPath;

    invoke-virtual {v0}, Lcom/owncloud/android/lib/common/network/RedirectionPath;->getRedirectionsCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
