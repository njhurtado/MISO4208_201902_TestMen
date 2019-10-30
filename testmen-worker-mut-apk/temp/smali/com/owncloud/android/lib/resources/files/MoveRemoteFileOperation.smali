.class public Lcom/owncloud/android/lib/resources/files/MoveRemoteFileOperation;
.super Lcom/owncloud/android/lib/common/operations/RemoteOperation;
.source "MoveRemoteFileOperation.java"


# static fields
.field private static final MOVE_CONNECTION_TIMEOUT:I = 0x1388

.field private static final MOVE_READ_TIMEOUT:I = 0x927c0

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mOverwrite:Z

.field private mSrcRemotePath:Ljava/lang/String;

.field private mTargetRemotePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/owncloud/android/lib/resources/files/MoveRemoteFileOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/resources/files/MoveRemoteFileOperation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "srcRemotePath"    # Ljava/lang/String;
    .param p2, "targetRemotePath"    # Ljava/lang/String;
    .param p3, "overwrite"    # Z

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/owncloud/android/lib/common/operations/RemoteOperation;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/files/MoveRemoteFileOperation;->mSrcRemotePath:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcom/owncloud/android/lib/resources/files/MoveRemoteFileOperation;->mTargetRemotePath:Ljava/lang/String;

    .line 80
    iput-boolean p3, p0, Lcom/owncloud/android/lib/resources/files/MoveRemoteFileOperation;->mOverwrite:Z

    .line 81
    return-void
.end method

.method private processPartialError(Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .locals 9
    .param p1, "move"    # Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 179
    invoke-virtual {p1}, Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;->getResponseBodyAsMultiStatus()Lorg/apache/jackrabbit/webdav/MultiStatus;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/jackrabbit/webdav/MultiStatus;->getResponses()[Lorg/apache/jackrabbit/webdav/MultiStatusResponse;

    move-result-object v2

    .line 180
    .local v2, "responses":[Lorg/apache/jackrabbit/webdav/MultiStatusResponse;
    const/4 v4, 0x0

    .line 181
    .local v4, "status":[Lorg/apache/jackrabbit/webdav/Status;
    const/4 v0, 0x0

    .line 182
    .local v0, "failFound":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, v2

    if-ge v1, v7, :cond_1

    if-nez v0, :cond_1

    .line 183
    aget-object v7, v2, v1

    invoke-virtual {v7}, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->getStatus()[Lorg/apache/jackrabbit/webdav/Status;

    move-result-object v4

    .line 184
    if-eqz v4, :cond_0

    array-length v7, v4

    if-lez v7, :cond_0

    aget-object v7, v4, v6

    .line 187
    invoke-virtual {v7}, Lorg/apache/jackrabbit/webdav/Status;->getStatusCode()I

    move-result v7

    const/16 v8, 0x12b

    if-le v7, v8, :cond_0

    move v0, v5

    .line 182
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v0, v6

    .line 187
    goto :goto_1

    .line 192
    :cond_1
    if-eqz v0, :cond_2

    .line 193
    new-instance v3, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    sget-object v5, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->PARTIAL_MOVE_DONE:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    invoke-direct {v3, v5}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;)V

    .line 198
    .local v3, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_2
    return-object v3

    .line 195
    .end local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :cond_2
    new-instance v3, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    invoke-direct {v3, v5, p1}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZLorg/apache/commons/httpclient/HttpMethod;)V

    .restart local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_2
.end method


# virtual methods
.method protected isSuccess(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 204
    const/16 v0, 0xc9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xcc

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected run(Lcom/owncloud/android/lib/common/OwnCloudClient;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .locals 11
    .param p1, "client"    # Lcom/owncloud/android/lib/common/OwnCloudClient;

    .prologue
    .line 92
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getOwnCloudVersion()Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    move-result-object v6

    .line 93
    .local v6, "version":Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;
    if-eqz v6, :cond_1

    .line 94
    invoke-virtual {v6}, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->isVersionWithForbiddenCharacters()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v7, 0x1

    .line 97
    .local v7, "versionWithForbiddenChars":Z
    :goto_0
    iget-object v8, p0, Lcom/owncloud/android/lib/resources/files/MoveRemoteFileOperation;->mTargetRemotePath:Ljava/lang/String;

    invoke-static {v8, v7}, Lcom/owncloud/android/lib/resources/files/FileUtils;->isValidPath(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_2

    .line 98
    new-instance v3, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    sget-object v8, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->INVALID_CHARACTER_IN_NAME:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    invoke-direct {v3, v8}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;)V

    .line 153
    :cond_0
    :goto_1
    return-object v3

    .line 94
    .end local v7    # "versionWithForbiddenChars":Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 101
    .restart local v7    # "versionWithForbiddenChars":Z
    :cond_2
    iget-object v8, p0, Lcom/owncloud/android/lib/resources/files/MoveRemoteFileOperation;->mTargetRemotePath:Ljava/lang/String;

    iget-object v9, p0, Lcom/owncloud/android/lib/resources/files/MoveRemoteFileOperation;->mSrcRemotePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 103
    new-instance v3, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    sget-object v8, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->OK:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    invoke-direct {v3, v8}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;)V

    goto :goto_1

    .line 106
    :cond_3
    iget-object v8, p0, Lcom/owncloud/android/lib/resources/files/MoveRemoteFileOperation;->mTargetRemotePath:Ljava/lang/String;

    iget-object v9, p0, Lcom/owncloud/android/lib/resources/files/MoveRemoteFileOperation;->mSrcRemotePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 107
    new-instance v3, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    sget-object v8, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->INVALID_MOVE_INTO_DESCENDANT:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    invoke-direct {v3, v8}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;)V

    goto :goto_1

    .line 112
    :cond_4
    const/4 v1, 0x0

    .line 113
    .local v1, "move":Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;
    const/4 v3, 0x0

    .line 115
    .local v3, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_0
    new-instance v2, Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getWebdavUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/owncloud/android/lib/resources/files/MoveRemoteFileOperation;->mSrcRemotePath:Ljava/lang/String;

    invoke-static {v9}, Lcom/owncloud/android/lib/common/network/WebdavUtils;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getWebdavUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/owncloud/android/lib/resources/files/MoveRemoteFileOperation;->mTargetRemotePath:Ljava/lang/String;

    invoke-static {v10}, Lcom/owncloud/android/lib/common/network/WebdavUtils;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-boolean v10, p0, Lcom/owncloud/android/lib/resources/files/MoveRemoteFileOperation;->mOverwrite:Z

    invoke-direct {v2, v8, v9, v10}, Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .end local v1    # "move":Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;
    .local v2, "move":Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;
    const v8, 0x927c0

    const/16 v9, 0x1388

    :try_start_1
    invoke-virtual {p1, v2, v8, v9}, Lcom/owncloud/android/lib/common/OwnCloudClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethodBase;II)I

    move-result v5

    .line 123
    .local v5, "status":I
    const/16 v8, 0xcf

    if-ne v5, v8, :cond_5

    .line 124
    invoke-direct {p0, v2}, Lcom/owncloud/android/lib/resources/files/MoveRemoteFileOperation;->processPartialError(Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    move-result-object v3

    .line 140
    :goto_2
    sget-object v8, Lcom/owncloud/android/lib/resources/files/MoveRemoteFileOperation;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Move "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/owncloud/android/lib/resources/files/MoveRemoteFileOperation;->mSrcRemotePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/owncloud/android/lib/resources/files/MoveRemoteFileOperation;->mTargetRemotePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 141
    invoke-virtual {v3}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getLogMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 140
    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 149
    if-eqz v2, :cond_8

    .line 150
    invoke-virtual {v2}, Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;->releaseConnection()V

    move-object v1, v2

    .end local v2    # "move":Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;
    .restart local v1    # "move":Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;
    goto/16 :goto_1

    .line 126
    .end local v1    # "move":Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;
    .restart local v2    # "move":Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;
    :cond_5
    const/16 v8, 0x19c

    if-ne v5, v8, :cond_6

    :try_start_2
    iget-boolean v8, p0, Lcom/owncloud/android/lib/resources/files/MoveRemoteFileOperation;->mOverwrite:Z

    if-nez v8, :cond_6

    .line 128
    new-instance v4, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    sget-object v8, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->INVALID_OVERWRITE:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    invoke-direct {v4, v8}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 129
    .end local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v4, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_3
    invoke-virtual {v2}, Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/owncloud/android/lib/common/OwnCloudClient;->exhaustResponse(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v3, v4

    .end local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_2

    .line 136
    :cond_6
    :try_start_4
    new-instance v4, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    invoke-virtual {p0, v5}, Lcom/owncloud/android/lib/resources/files/MoveRemoteFileOperation;->isSuccess(I)Z

    move-result v8

    invoke-direct {v4, v8, v2}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZLorg/apache/commons/httpclient/HttpMethod;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 137
    .end local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_5
    invoke-virtual {v2}, Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/owncloud/android/lib/common/OwnCloudClient;->exhaustResponse(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v3, v4

    .end local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_2

    .line 143
    .end local v2    # "move":Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;
    .end local v5    # "status":I
    .restart local v1    # "move":Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;
    :catch_0
    move-exception v0

    move-object v4, v3

    .line 144
    .end local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_3
    :try_start_6
    new-instance v3, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    invoke-direct {v3, v0}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 145
    .end local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_7
    sget-object v8, Lcom/owncloud/android/lib/resources/files/MoveRemoteFileOperation;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Move "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/owncloud/android/lib/resources/files/MoveRemoteFileOperation;->mSrcRemotePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/owncloud/android/lib/resources/files/MoveRemoteFileOperation;->mTargetRemotePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 146
    invoke-virtual {v3}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getLogMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 145
    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 149
    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;->releaseConnection()V

    goto/16 :goto_1

    .line 149
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v1, :cond_7

    .line 150
    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;->releaseConnection()V

    :cond_7
    throw v8

    .line 149
    .end local v1    # "move":Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;
    .restart local v2    # "move":Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;
    :catchall_1
    move-exception v8

    move-object v1, v2

    .end local v2    # "move":Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;
    .restart local v1    # "move":Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;
    goto :goto_4

    .end local v1    # "move":Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;
    .end local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v2    # "move":Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;
    .restart local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v5    # "status":I
    :catchall_2
    move-exception v8

    move-object v3, v4

    .end local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    move-object v1, v2

    .end local v2    # "move":Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;
    .restart local v1    # "move":Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;
    goto :goto_4

    .end local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .end local v5    # "status":I
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :catchall_3
    move-exception v8

    move-object v3, v4

    .end local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_4

    .line 143
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "move":Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;
    .restart local v2    # "move":Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;
    :catch_1
    move-exception v0

    move-object v4, v3

    .end local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    move-object v1, v2

    .end local v2    # "move":Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;
    .restart local v1    # "move":Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;
    goto :goto_3

    .end local v1    # "move":Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;
    .restart local v2    # "move":Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;
    .restart local v5    # "status":I
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2    # "move":Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;
    .restart local v1    # "move":Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;
    goto :goto_3

    .end local v1    # "move":Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;
    .end local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v2    # "move":Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;
    .restart local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :cond_8
    move-object v1, v2

    .end local v2    # "move":Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;
    .restart local v1    # "move":Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;
    goto/16 :goto_1
.end method
