.class public Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;
.super Lcom/owncloud/android/lib/common/operations/RemoteOperation;
.source "UploadRemoteFileOperation.java"


# static fields
.field protected static final IF_MATCH_HEADER:Ljava/lang/String; = "If-Match"

.field protected static final OC_TOTAL_LENGTH_HEADER:Ljava/lang/String; = "OC-Total-Length"

.field protected static final OC_X_OC_MTIME_HEADER:Ljava/lang/String; = "X-OC-Mtime"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final mCancellationRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mDataTransferListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/owncloud/android/lib/common/network/OnDatatransferProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

.field protected mFileLastModifTimestamp:Ljava/lang/String;

.field protected mLocalPath:Ljava/lang/String;

.field protected mMimeType:Ljava/lang/String;

.field protected mPutMethod:Lorg/apache/commons/httpclient/methods/PutMethod;

.field protected mRemotePath:Ljava/lang/String;

.field protected mRequiredEtag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "localPath"    # Ljava/lang/String;
    .param p2, "remotePath"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "fileLastModifTimestamp"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Lcom/owncloud/android/lib/common/operations/RemoteOperation;-><init>()V

    .line 67
    iput-object v2, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mPutMethod:Lorg/apache/commons/httpclient/methods/PutMethod;

    .line 68
    iput-object v2, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mRequiredEtag:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mCancellationRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mDataTransferListeners:Ljava/util/Set;

    .line 73
    iput-object v2, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    .line 77
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mLocalPath:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mRemotePath:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mMimeType:Ljava/lang/String;

    .line 80
    iput-object p4, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mFileLastModifTimestamp:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "localPath"    # Ljava/lang/String;
    .param p2, "remotePath"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "requiredEtag"    # Ljava/lang/String;
    .param p5, "fileLastModifTimestamp"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iput-object p4, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mRequiredEtag:Ljava/lang/String;

    .line 87
    return-void
.end method


# virtual methods
.method public addDatatransferProgressListener(Lcom/owncloud/android/lib/common/network/OnDatatransferProgressListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/owncloud/android/lib/common/network/OnDatatransferProgressListener;

    .prologue
    .line 169
    iget-object v1, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mDataTransferListeners:Ljava/util/Set;

    monitor-enter v1

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mDataTransferListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    check-cast v0, Lcom/owncloud/android/lib/common/network/ProgressiveDataTransferer;

    invoke-interface {v0, p1}, Lcom/owncloud/android/lib/common/network/ProgressiveDataTransferer;->addDatatransferProgressListener(Lcom/owncloud/android/lib/common/network/OnDatatransferProgressListener;)V

    .line 175
    :cond_0
    return-void

    .line 171
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public cancel()V
    .locals 3

    .prologue
    .line 187
    iget-object v1, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mCancellationRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mCancellationRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 189
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mPutMethod:Lorg/apache/commons/httpclient/methods/PutMethod;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mPutMethod:Lorg/apache/commons/httpclient/methods/PutMethod;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/PutMethod;->abort()V

    .line 191
    :cond_0
    monitor-exit v1

    .line 192
    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDataTransferListeners()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/owncloud/android/lib/common/network/OnDatatransferProgressListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mDataTransferListeners:Ljava/util/Set;

    return-object v0
.end method

.method public isSuccess(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 131
    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

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

.method public removeDatatransferProgressListener(Lcom/owncloud/android/lib/common/network/OnDatatransferProgressListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/owncloud/android/lib/common/network/OnDatatransferProgressListener;

    .prologue
    .line 178
    iget-object v1, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mDataTransferListeners:Ljava/util/Set;

    monitor-enter v1

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mDataTransferListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 180
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    check-cast v0, Lcom/owncloud/android/lib/common/network/ProgressiveDataTransferer;

    invoke-interface {v0, p1}, Lcom/owncloud/android/lib/common/network/ProgressiveDataTransferer;->removeDatatransferProgressListener(Lcom/owncloud/android/lib/common/network/OnDatatransferProgressListener;)V

    .line 184
    :cond_0
    return-void

    .line 180
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected run(Lcom/owncloud/android/lib/common/OwnCloudClient;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .locals 8
    .param p1, "client"    # Lcom/owncloud/android/lib/common/OwnCloudClient;

    .prologue
    .line 91
    const/4 v2, 0x0

    .line 93
    .local v2, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getParams()Lorg/apache/commons/httpclient/params/HttpClientParams;

    move-result-object v3

    const-string v4, "http.method.retry-handler"

    invoke-virtual {v3, v4}, Lorg/apache/commons/httpclient/params/HttpClientParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;

    .line 97
    .local v1, "oldRetryHandler":Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;
    :try_start_0
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getParams()Lorg/apache/commons/httpclient/params/HttpClientParams;

    move-result-object v3

    const-string v4, "http.method.retry-handler"

    new-instance v5, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;-><init>(IZ)V

    invoke-virtual {v3, v4, v5}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    new-instance v3, Lorg/apache/commons/httpclient/methods/PutMethod;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getWebdavUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mRemotePath:Ljava/lang/String;

    invoke-static {v5}, Lcom/owncloud/android/lib/common/network/WebdavUtils;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/httpclient/methods/PutMethod;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mPutMethod:Lorg/apache/commons/httpclient/methods/PutMethod;

    .line 104
    iget-object v3, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mCancellationRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    new-instance v2, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    .end local v2    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    new-instance v3, Lcom/owncloud/android/lib/common/operations/OperationCancelledException;

    invoke-direct {v3}, Lcom/owncloud/android/lib/common/operations/OperationCancelledException;-><init>()V

    invoke-direct {v2, v3}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .restart local v2    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_0
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getParams()Lorg/apache/commons/httpclient/params/HttpClientParams;

    move-result-object v3

    const-string v4, "http.method.retry-handler"

    invoke-virtual {v3, v4, v1}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    :goto_1
    return-object v2

    .line 110
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->uploadFile(Lcom/owncloud/android/lib/common/OwnCloudClient;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 113
    .end local v2    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mPutMethod:Lorg/apache/commons/httpclient/methods/PutMethod;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mPutMethod:Lorg/apache/commons/httpclient/methods/PutMethod;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/methods/PutMethod;->isAborted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 115
    new-instance v2, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    new-instance v3, Lcom/owncloud/android/lib/common/operations/OperationCancelledException;

    invoke-direct {v3}, Lcom/owncloud/android/lib/common/operations/OperationCancelledException;-><init>()V

    invoke-direct {v2, v3}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    .restart local v2    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_2
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getParams()Lorg/apache/commons/httpclient/params/HttpClientParams;

    move-result-object v3

    const-string v4, "http.method.retry-handler"

    invoke-virtual {v3, v4, v1}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 118
    .end local v2    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :cond_1
    :try_start_3
    new-instance v2, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    invoke-direct {v2, v0}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .restart local v2    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_2

    .line 122
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getParams()Lorg/apache/commons/httpclient/params/HttpClientParams;

    move-result-object v4

    const-string v5, "http.method.retry-handler"

    invoke-virtual {v4, v5, v1}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    throw v3
.end method

.method protected uploadFile(Lcom/owncloud/android/lib/common/OwnCloudClient;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .locals 8
    .param p1, "client"    # Lcom/owncloud/android/lib/common/OwnCloudClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    const/4 v2, -0x1

    .line 140
    .local v2, "status":I
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mLocalPath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, "f":Ljava/io/File;
    new-instance v3, Lcom/owncloud/android/lib/common/network/FileRequestEntity;

    iget-object v4, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mMimeType:Ljava/lang/String;

    invoke-direct {v3, v0, v4}, Lcom/owncloud/android/lib/common/network/FileRequestEntity;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    .line 142
    iget-object v4, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mDataTransferListeners:Ljava/util/Set;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 143
    :try_start_1
    iget-object v3, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    check-cast v3, Lcom/owncloud/android/lib/common/network/ProgressiveDataTransferer;

    iget-object v5, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mDataTransferListeners:Ljava/util/Set;

    .line 144
    invoke-interface {v3, v5}, Lcom/owncloud/android/lib/common/network/ProgressiveDataTransferer;->addDatatransferProgressListeners(Ljava/util/Collection;)V

    .line 145
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    :try_start_2
    iget-object v3, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mRequiredEtag:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mRequiredEtag:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 147
    iget-object v3, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mPutMethod:Lorg/apache/commons/httpclient/methods/PutMethod;

    const-string v4, "If-Match"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mRequiredEtag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/commons/httpclient/methods/PutMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_0
    iget-object v3, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mPutMethod:Lorg/apache/commons/httpclient/methods/PutMethod;

    const-string v4, "OC-Total-Length"

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/commons/httpclient/methods/PutMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v3, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mPutMethod:Lorg/apache/commons/httpclient/methods/PutMethod;

    const-string v4, "X-OC-Mtime"

    iget-object v5, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mFileLastModifTimestamp:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/apache/commons/httpclient/methods/PutMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v3, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mPutMethod:Lorg/apache/commons/httpclient/methods/PutMethod;

    iget-object v4, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    invoke-virtual {v3, v4}, Lorg/apache/commons/httpclient/methods/PutMethod;->setRequestEntity(Lorg/apache/commons/httpclient/methods/RequestEntity;)V

    .line 152
    iget-object v3, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mPutMethod:Lorg/apache/commons/httpclient/methods/PutMethod;

    invoke-virtual {p1, v3}, Lcom/owncloud/android/lib/common/OwnCloudClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    move-result v2

    .line 154
    new-instance v1, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    invoke-virtual {p0, v2}, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->isSuccess(I)Z

    move-result v3

    iget-object v4, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mPutMethod:Lorg/apache/commons/httpclient/methods/PutMethod;

    invoke-direct {v1, v3, v4}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZLorg/apache/commons/httpclient/HttpMethod;)V

    .line 156
    .local v1, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    iget-object v3, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mPutMethod:Lorg/apache/commons/httpclient/methods/PutMethod;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/methods/PutMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/owncloud/android/lib/common/OwnCloudClient;->exhaustResponse(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 159
    iget-object v3, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mPutMethod:Lorg/apache/commons/httpclient/methods/PutMethod;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/methods/PutMethod;->releaseConnection()V

    .line 161
    return-object v1

    .line 145
    .end local v1    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 159
    .end local v0    # "f":Ljava/io/File;
    :catchall_1
    move-exception v3

    iget-object v4, p0, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->mPutMethod:Lorg/apache/commons/httpclient/methods/PutMethod;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/methods/PutMethod;->releaseConnection()V

    throw v3
.end method
