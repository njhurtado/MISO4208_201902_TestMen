.class public Lcom/owncloud/android/lib/resources/files/CreateRemoteFolderOperation;
.super Lcom/owncloud/android/lib/common/operations/RemoteOperation;
.source "CreateRemoteFolderOperation.java"


# static fields
.field private static final CONNECTION_TIMEOUT:I = 0x1388

.field private static final READ_TIMEOUT:I = 0x7530

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mCreateFullPath:Z

.field protected mRemotePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/owncloud/android/lib/resources/files/CreateRemoteFolderOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/resources/files/CreateRemoteFolderOperation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "remotePath"    # Ljava/lang/String;
    .param p2, "createFullPath"    # Z

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/owncloud/android/lib/common/operations/RemoteOperation;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/files/CreateRemoteFolderOperation;->mRemotePath:Ljava/lang/String;

    .line 64
    iput-boolean p2, p0, Lcom/owncloud/android/lib/resources/files/CreateRemoteFolderOperation;->mCreateFullPath:Z

    .line 65
    return-void
.end method

.method private createFolder(Lcom/owncloud/android/lib/common/OwnCloudClient;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .locals 8
    .param p1, "client"    # Lcom/owncloud/android/lib/common/OwnCloudClient;

    .prologue
    .line 98
    const/4 v3, 0x0

    .line 99
    .local v3, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    const/4 v1, 0x0

    .line 101
    .local v1, "mkcol":Lorg/apache/jackrabbit/webdav/client/methods/MkColMethod;
    :try_start_0
    new-instance v2, Lorg/apache/jackrabbit/webdav/client/methods/MkColMethod;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getWebdavUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/owncloud/android/lib/resources/files/CreateRemoteFolderOperation;->mRemotePath:Ljava/lang/String;

    invoke-static {v6}, Lcom/owncloud/android/lib/common/network/WebdavUtils;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/apache/jackrabbit/webdav/client/methods/MkColMethod;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .end local v1    # "mkcol":Lorg/apache/jackrabbit/webdav/client/methods/MkColMethod;
    .local v2, "mkcol":Lorg/apache/jackrabbit/webdav/client/methods/MkColMethod;
    const/16 v5, 0x7530

    const/16 v6, 0x1388

    :try_start_1
    invoke-virtual {p1, v2, v5, v6}, Lcom/owncloud/android/lib/common/OwnCloudClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethodBase;II)I

    .line 103
    new-instance v4, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    invoke-virtual {v2}, Lorg/apache/jackrabbit/webdav/client/methods/MkColMethod;->succeeded()Z

    move-result v5

    invoke-direct {v4, v5, v2}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZLorg/apache/commons/httpclient/HttpMethod;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 104
    .end local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v4, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_2
    sget-object v5, Lcom/owncloud/android/lib/resources/files/CreateRemoteFolderOperation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Create directory "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/owncloud/android/lib/resources/files/CreateRemoteFolderOperation;->mRemotePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getLogMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v2}, Lorg/apache/jackrabbit/webdav/client/methods/MkColMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/owncloud/android/lib/common/OwnCloudClient;->exhaustResponse(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 112
    if-eqz v2, :cond_2

    .line 113
    invoke-virtual {v2}, Lorg/apache/jackrabbit/webdav/client/methods/MkColMethod;->releaseConnection()V

    move-object v1, v2

    .end local v2    # "mkcol":Lorg/apache/jackrabbit/webdav/client/methods/MkColMethod;
    .restart local v1    # "mkcol":Lorg/apache/jackrabbit/webdav/client/methods/MkColMethod;
    move-object v3, v4

    .line 115
    .end local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :cond_0
    :goto_0
    return-object v3

    .line 107
    :catch_0
    move-exception v0

    move-object v4, v3

    .line 108
    .end local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_1
    :try_start_3
    new-instance v3, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    invoke-direct {v3, v0}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 109
    .end local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_4
    sget-object v5, Lcom/owncloud/android/lib/resources/files/CreateRemoteFolderOperation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Create directory "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/owncloud/android/lib/resources/files/CreateRemoteFolderOperation;->mRemotePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getLogMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 112
    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/client/methods/MkColMethod;->releaseConnection()V

    goto :goto_0

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v1, :cond_1

    .line 113
    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/client/methods/MkColMethod;->releaseConnection()V

    :cond_1
    throw v5

    .line 112
    .end local v1    # "mkcol":Lorg/apache/jackrabbit/webdav/client/methods/MkColMethod;
    .restart local v2    # "mkcol":Lorg/apache/jackrabbit/webdav/client/methods/MkColMethod;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "mkcol":Lorg/apache/jackrabbit/webdav/client/methods/MkColMethod;
    .restart local v1    # "mkcol":Lorg/apache/jackrabbit/webdav/client/methods/MkColMethod;
    goto :goto_2

    .end local v1    # "mkcol":Lorg/apache/jackrabbit/webdav/client/methods/MkColMethod;
    .end local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v2    # "mkcol":Lorg/apache/jackrabbit/webdav/client/methods/MkColMethod;
    .restart local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :catchall_2
    move-exception v5

    move-object v1, v2

    .end local v2    # "mkcol":Lorg/apache/jackrabbit/webdav/client/methods/MkColMethod;
    .restart local v1    # "mkcol":Lorg/apache/jackrabbit/webdav/client/methods/MkColMethod;
    move-object v3, v4

    .end local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_2

    .end local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :catchall_3
    move-exception v5

    move-object v3, v4

    .end local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_2

    .line 107
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mkcol":Lorg/apache/jackrabbit/webdav/client/methods/MkColMethod;
    .restart local v2    # "mkcol":Lorg/apache/jackrabbit/webdav/client/methods/MkColMethod;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "mkcol":Lorg/apache/jackrabbit/webdav/client/methods/MkColMethod;
    .restart local v1    # "mkcol":Lorg/apache/jackrabbit/webdav/client/methods/MkColMethod;
    move-object v4, v3

    .end local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_1

    .end local v1    # "mkcol":Lorg/apache/jackrabbit/webdav/client/methods/MkColMethod;
    .restart local v2    # "mkcol":Lorg/apache/jackrabbit/webdav/client/methods/MkColMethod;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2    # "mkcol":Lorg/apache/jackrabbit/webdav/client/methods/MkColMethod;
    .restart local v1    # "mkcol":Lorg/apache/jackrabbit/webdav/client/methods/MkColMethod;
    goto :goto_1

    .end local v1    # "mkcol":Lorg/apache/jackrabbit/webdav/client/methods/MkColMethod;
    .restart local v2    # "mkcol":Lorg/apache/jackrabbit/webdav/client/methods/MkColMethod;
    :cond_2
    move-object v1, v2

    .end local v2    # "mkcol":Lorg/apache/jackrabbit/webdav/client/methods/MkColMethod;
    .restart local v1    # "mkcol":Lorg/apache/jackrabbit/webdav/client/methods/MkColMethod;
    move-object v3, v4

    .end local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_0
.end method

.method private createParentFolder(Ljava/lang/String;Lcom/owncloud/android/lib/common/OwnCloudClient;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .locals 2
    .param p1, "parentPath"    # Ljava/lang/String;
    .param p2, "client"    # Lcom/owncloud/android/lib/common/OwnCloudClient;

    .prologue
    .line 119
    new-instance v0, Lcom/owncloud/android/lib/resources/files/CreateRemoteFolderOperation;

    iget-boolean v1, p0, Lcom/owncloud/android/lib/resources/files/CreateRemoteFolderOperation;->mCreateFullPath:Z

    invoke-direct {v0, p1, v1}, Lcom/owncloud/android/lib/resources/files/CreateRemoteFolderOperation;-><init>(Ljava/lang/String;Z)V

    .line 121
    .local v0, "operation":Lcom/owncloud/android/lib/common/operations/RemoteOperation;
    invoke-virtual {v0, p2}, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->execute(Lcom/owncloud/android/lib/common/OwnCloudClient;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected run(Lcom/owncloud/android/lib/common/OwnCloudClient;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .locals 6
    .param p1, "client"    # Lcom/owncloud/android/lib/common/OwnCloudClient;

    .prologue
    .line 74
    const/4 v1, 0x0

    .line 75
    .local v1, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getOwnCloudVersion()Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    move-result-object v2

    .line 76
    .local v2, "version":Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;
    if-eqz v2, :cond_1

    .line 77
    invoke-virtual {v2}, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->isVersionWithForbiddenCharacters()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 78
    .local v3, "versionWithForbiddenChars":Z
    :goto_0
    iget-object v4, p0, Lcom/owncloud/android/lib/resources/files/CreateRemoteFolderOperation;->mRemotePath:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/owncloud/android/lib/resources/files/FileUtils;->isValidPath(Ljava/lang/String;Z)Z

    move-result v0

    .line 79
    .local v0, "noInvalidChars":Z
    if-eqz v0, :cond_2

    .line 80
    invoke-direct {p0, p1}, Lcom/owncloud/android/lib/resources/files/CreateRemoteFolderOperation;->createFolder(Lcom/owncloud/android/lib/common/OwnCloudClient;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/owncloud/android/lib/resources/files/CreateRemoteFolderOperation;->mCreateFullPath:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->CONFLICT:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    .line 82
    invoke-virtual {v1}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getCode()Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 83
    iget-object v4, p0, Lcom/owncloud/android/lib/resources/files/CreateRemoteFolderOperation;->mRemotePath:Ljava/lang/String;

    invoke-static {v4}, Lcom/owncloud/android/lib/resources/files/FileUtils;->getParentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Lcom/owncloud/android/lib/resources/files/CreateRemoteFolderOperation;->createParentFolder(Ljava/lang/String;Lcom/owncloud/android/lib/common/OwnCloudClient;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 85
    invoke-direct {p0, p1}, Lcom/owncloud/android/lib/resources/files/CreateRemoteFolderOperation;->createFolder(Lcom/owncloud/android/lib/common/OwnCloudClient;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    move-result-object v1

    .line 93
    :cond_0
    :goto_1
    return-object v1

    .line 77
    .end local v0    # "noInvalidChars":Z
    .end local v3    # "versionWithForbiddenChars":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 90
    .restart local v0    # "noInvalidChars":Z
    .restart local v3    # "versionWithForbiddenChars":Z
    :cond_2
    new-instance v1, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    .end local v1    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    sget-object v4, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->INVALID_CHARACTER_IN_NAME:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    invoke-direct {v1, v4}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;)V

    .restart local v1    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_1
.end method
