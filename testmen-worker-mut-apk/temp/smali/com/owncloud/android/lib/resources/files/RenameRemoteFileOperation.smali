.class public Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation;
.super Lcom/owncloud/android/lib/common/operations/RemoteOperation;
.source "RenameRemoteFileOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation$LocalMoveMethod;
    }
.end annotation


# static fields
.field private static final RENAME_CONNECTION_TIMEOUT:I = 0x1388

.field private static final RENAME_READ_TIMEOUT:I = 0x927c0

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mNewName:Ljava/lang/String;

.field private mNewRemotePath:Ljava/lang/String;

.field private mOldName:Ljava/lang/String;

.field private mOldRemotePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "oldName"    # Ljava/lang/String;
    .param p2, "oldRemotePath"    # Ljava/lang/String;
    .param p3, "newName"    # Ljava/lang/String;
    .param p4, "isFolder"    # Z

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/owncloud/android/lib/common/operations/RemoteOperation;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation;->mOldName:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation;->mOldRemotePath:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation;->mNewName:Ljava/lang/String;

    .line 73
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation;->mOldRemotePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "parent":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation;->mNewName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation;->mNewRemotePath:Ljava/lang/String;

    .line 77
    if-eqz p4, :cond_0

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation;->mNewRemotePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation;->mNewRemotePath:Ljava/lang/String;

    .line 80
    :cond_0
    return-void

    .line 74
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected run(Lcom/owncloud/android/lib/common/OwnCloudClient;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .locals 11
    .param p1, "client"    # Lcom/owncloud/android/lib/common/OwnCloudClient;

    .prologue
    .line 89
    const/4 v4, 0x0

    .line 91
    .local v4, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    const/4 v1, 0x0

    .line 93
    .local v1, "move":Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation$LocalMoveMethod;
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getOwnCloudVersion()Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    move-result-object v6

    .line 94
    .local v6, "version":Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;
    if-eqz v6, :cond_1

    .line 95
    invoke-virtual {v6}, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->isVersionWithForbiddenCharacters()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v7, 0x1

    .line 96
    .local v7, "versionWithForbiddenChars":Z
    :goto_0
    iget-object v8, p0, Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation;->mNewRemotePath:Ljava/lang/String;

    invoke-static {v8, v7}, Lcom/owncloud/android/lib/resources/files/FileUtils;->isValidPath(Ljava/lang/String;Z)Z

    move-result v3

    .line 98
    .local v3, "noInvalidChars":Z
    if-eqz v3, :cond_7

    .line 100
    :try_start_0
    iget-object v8, p0, Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation;->mNewName:Ljava/lang/String;

    iget-object v9, p0, Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation;->mOldName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 101
    new-instance v8, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    sget-object v9, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->OK:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    invoke-direct {v8, v9}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {v1}, Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation$LocalMoveMethod;->releaseConnection()V

    .line 134
    :cond_0
    :goto_1
    return-object v8

    .line 95
    .end local v3    # "noInvalidChars":Z
    .end local v7    # "versionWithForbiddenChars":Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 105
    .restart local v3    # "noInvalidChars":Z
    .restart local v7    # "versionWithForbiddenChars":Z
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation;->mNewRemotePath:Ljava/lang/String;

    invoke-virtual {p1, v8}, Lcom/owncloud/android/lib/common/OwnCloudClient;->existsFile(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 106
    new-instance v8, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    sget-object v9, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->INVALID_OVERWRITE:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    invoke-direct {v8, v9}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {v1}, Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation$LocalMoveMethod;->releaseConnection()V

    goto :goto_1

    .line 109
    :cond_3
    :try_start_2
    new-instance v2, Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation$LocalMoveMethod;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getWebdavUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation;->mOldRemotePath:Ljava/lang/String;

    .line 110
    invoke-static {v9}, Lcom/owncloud/android/lib/common/network/WebdavUtils;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getWebdavUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation;->mNewRemotePath:Ljava/lang/String;

    invoke-static {v10}, Lcom/owncloud/android/lib/common/network/WebdavUtils;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, p0, v8, v9}, Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation$LocalMoveMethod;-><init>(Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    .end local v1    # "move":Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation$LocalMoveMethod;
    .local v2, "move":Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation$LocalMoveMethod;
    const v8, 0x927c0

    const/16 v9, 0x1388

    :try_start_3
    invoke-virtual {p1, v2, v8, v9}, Lcom/owncloud/android/lib/common/OwnCloudClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethodBase;II)I

    .line 113
    new-instance v5, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    invoke-virtual {v2}, Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation$LocalMoveMethod;->succeeded()Z

    move-result v8

    invoke-direct {v5, v8, v2}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZLorg/apache/commons/httpclient/HttpMethod;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 114
    .end local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v5, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_4
    sget-object v8, Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Rename "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation;->mOldRemotePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation;->mNewRemotePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 115
    invoke-virtual {v5}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getLogMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 114
    invoke-static {v8, v9}, Lcom/owncloud/android/lib/common/utils/Log_OC;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v2}, Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation$LocalMoveMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/owncloud/android/lib/common/OwnCloudClient;->exhaustResponse(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 126
    if-eqz v2, :cond_8

    .line 127
    invoke-virtual {v2}, Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation$LocalMoveMethod;->releaseConnection()V

    move-object v1, v2

    .end local v2    # "move":Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation$LocalMoveMethod;
    .restart local v1    # "move":Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation$LocalMoveMethod;
    move-object v4, v5

    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :cond_4
    :goto_2
    move-object v8, v4

    .line 134
    goto/16 :goto_1

    .line 119
    :catch_0
    move-exception v0

    move-object v5, v4

    .line 120
    .end local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_3
    :try_start_5
    new-instance v4, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    invoke-direct {v4, v0}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 121
    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_6
    sget-object v9, Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Rename "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation;->mOldRemotePath:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " to "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation;->mNewRemotePath:Ljava/lang/String;

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation;->mNewName:Ljava/lang/String;

    :goto_4
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ": "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 123
    invoke-virtual {v4}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getLogMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 121
    invoke-static {v9, v8, v0}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 126
    if-eqz v1, :cond_4

    .line 127
    invoke-virtual {v1}, Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation$LocalMoveMethod;->releaseConnection()V

    goto :goto_2

    .line 121
    :cond_5
    :try_start_7
    iget-object v8, p0, Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation;->mNewRemotePath:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 126
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v1, :cond_6

    .line 127
    invoke-virtual {v1}, Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation$LocalMoveMethod;->releaseConnection()V

    :cond_6
    throw v8

    .line 131
    :cond_7
    new-instance v4, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    .end local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    sget-object v8, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->INVALID_CHARACTER_IN_NAME:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    invoke-direct {v4, v8}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;)V

    .restart local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_2

    .line 126
    .end local v1    # "move":Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation$LocalMoveMethod;
    .restart local v2    # "move":Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation$LocalMoveMethod;
    :catchall_1
    move-exception v8

    move-object v1, v2

    .end local v2    # "move":Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation$LocalMoveMethod;
    .restart local v1    # "move":Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation$LocalMoveMethod;
    goto :goto_5

    .end local v1    # "move":Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation$LocalMoveMethod;
    .end local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v2    # "move":Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation$LocalMoveMethod;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :catchall_2
    move-exception v8

    move-object v1, v2

    .end local v2    # "move":Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation$LocalMoveMethod;
    .restart local v1    # "move":Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation$LocalMoveMethod;
    move-object v4, v5

    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_5

    .end local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :catchall_3
    move-exception v8

    move-object v4, v5

    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_5

    .line 119
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "move":Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation$LocalMoveMethod;
    .restart local v2    # "move":Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation$LocalMoveMethod;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "move":Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation$LocalMoveMethod;
    .restart local v1    # "move":Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation$LocalMoveMethod;
    move-object v5, v4

    .end local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_3

    .end local v1    # "move":Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation$LocalMoveMethod;
    .restart local v2    # "move":Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation$LocalMoveMethod;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2    # "move":Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation$LocalMoveMethod;
    .restart local v1    # "move":Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation$LocalMoveMethod;
    goto :goto_3

    .end local v1    # "move":Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation$LocalMoveMethod;
    .restart local v2    # "move":Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation$LocalMoveMethod;
    :cond_8
    move-object v1, v2

    .end local v2    # "move":Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation$LocalMoveMethod;
    .restart local v1    # "move":Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation$LocalMoveMethod;
    move-object v4, v5

    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_2
.end method
