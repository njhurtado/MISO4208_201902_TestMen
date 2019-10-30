.class public Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;
.super Lcom/owncloud/android/lib/common/operations/RemoteOperation;
.source "DownloadRemoteFileOperation.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCancellationRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDataTransferListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/owncloud/android/lib/common/network/OnDatatransferProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private mEtag:Ljava/lang/String;

.field private mGet:Lorg/apache/commons/httpclient/methods/GetMethod;

.field private mLocalFolderPath:Ljava/lang/String;

.field private mModificationTimestamp:J

.field private mRemotePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "remotePath"    # Ljava/lang/String;
    .param p2, "localFolderPath"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/owncloud/android/lib/common/operations/RemoteOperation;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->mDataTransferListeners:Ljava/util/Set;

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->mCancellationRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->mModificationTimestamp:J

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->mEtag:Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->mRemotePath:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->mLocalFolderPath:Ljava/lang/String;

    .line 73
    return-void
.end method

.method private getTmpPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->mLocalFolderPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->mRemotePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isSuccess(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 178
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
.method public addDatatransferProgressListener(Lcom/owncloud/android/lib/common/network/OnDatatransferProgressListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/owncloud/android/lib/common/network/OnDatatransferProgressListener;

    .prologue
    .line 186
    iget-object v1, p0, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->mDataTransferListeners:Ljava/util/Set;

    monitor-enter v1

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->mDataTransferListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 188
    monitor-exit v1

    .line 189
    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->mCancellationRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 199
    return-void
.end method

.method protected downloadFile(Lcom/owncloud/android/lib/common/OwnCloudClient;Ljava/io/File;)I
    .locals 22
    .param p1, "client"    # Lcom/owncloud/android/lib/common/OwnCloudClient;
    .param p2, "targetFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/HttpException;,
            Ljava/io/IOException;,
            Lcom/owncloud/android/lib/common/operations/OperationCancelledException;
        }
    .end annotation

    .prologue
    .line 102
    const/16 v20, -0x1

    .line 103
    .local v20, "status":I
    const/16 v19, 0x0

    .line 104
    .local v19, "savedFile":Z
    new-instance v3, Lorg/apache/commons/httpclient/methods/GetMethod;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getWebdavUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->mRemotePath:Ljava/lang/String;

    invoke-static {v5}, Lcom/owncloud/android/lib/common/network/WebdavUtils;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/httpclient/methods/GetMethod;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->mGet:Lorg/apache/commons/httpclient/methods/GetMethod;

    .line 105
    const/16 v16, 0x0

    .line 107
    .local v16, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/owncloud/android/lib/common/network/OnDatatransferProgressListener;>;"
    const/4 v14, 0x0

    .line 109
    .local v14, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->mGet:Lorg/apache/commons/httpclient/methods/GetMethod;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/owncloud/android/lib/common/OwnCloudClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    move-result v20

    .line 110
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->isSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 111
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->createNewFile()Z

    .line 112
    new-instance v2, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->mGet:Lorg/apache/commons/httpclient/methods/GetMethod;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/methods/GetMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 113
    .local v2, "bis":Ljava/io/BufferedInputStream;
    new-instance v15, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 114
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .local v15, "fos":Ljava/io/FileOutputStream;
    const-wide/16 v6, 0x0

    .line 116
    .local v6, "transferred":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->mGet:Lorg/apache/commons/httpclient/methods/GetMethod;

    const-string v4, "Content-Length"

    invoke-virtual {v3, v4}, Lorg/apache/commons/httpclient/methods/GetMethod;->getResponseHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v12

    .line 117
    .local v12, "contentLength":Lorg/apache/commons/httpclient/Header;
    if-eqz v12, :cond_2

    .line 118
    invoke-virtual {v12}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 119
    invoke-virtual {v12}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 121
    .local v8, "totalToTransfer":J
    :goto_0
    const/16 v3, 0x1000

    new-array v11, v3, [B

    .line 122
    .local v11, "bytes":[B
    const/16 v18, 0x0

    .line 123
    .local v18, "readResult":I
    :goto_1
    invoke-virtual {v2, v11}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v18

    const/4 v3, -0x1

    move/from16 v0, v18

    if-eq v0, v3, :cond_5

    .line 124
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->mCancellationRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 125
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->mCancellationRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 126
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->mGet:Lorg/apache/commons/httpclient/methods/GetMethod;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/methods/GetMethod;->abort()V

    .line 127
    new-instance v3, Lcom/owncloud/android/lib/common/operations/OperationCancelledException;

    invoke-direct {v3}, Lcom/owncloud/android/lib/common/operations/OperationCancelledException;-><init>()V

    throw v3

    .line 129
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 168
    .end local v8    # "totalToTransfer":J
    .end local v11    # "bytes":[B
    .end local v12    # "contentLength":Lorg/apache/commons/httpclient/Header;
    .end local v18    # "readResult":I
    :catchall_1
    move-exception v3

    move-object v14, v15

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v6    # "transferred":J
    .end local v15    # "fos":Ljava/io/FileOutputStream;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 169
    :cond_0
    if-nez v19, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 170
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    .line 172
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->mGet:Lorg/apache/commons/httpclient/methods/GetMethod;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    throw v3

    .line 119
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "transferred":J
    .restart local v12    # "contentLength":Lorg/apache/commons/httpclient/Header;
    .restart local v15    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    const-wide/16 v8, 0x0

    goto :goto_0

    .line 129
    .restart local v8    # "totalToTransfer":J
    .restart local v11    # "bytes":[B
    .restart local v18    # "readResult":I
    :cond_3
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 130
    const/4 v3, 0x0

    :try_start_5
    move/from16 v0, v18

    invoke-virtual {v15, v11, v3, v0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 131
    move/from16 v0, v18

    int-to-long v4, v0

    add-long/2addr v6, v4

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->mDataTransferListeners:Ljava/util/Set;

    move-object/from16 v21, v0

    monitor-enter v21
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 133
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->mDataTransferListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 134
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 135
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/owncloud/android/lib/common/network/OnDatatransferProgressListener;

    move/from16 v0, v18

    int-to-long v4, v0

    .line 136
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    .line 135
    invoke-interface/range {v3 .. v10}, Lcom/owncloud/android/lib/common/network/OnDatatransferProgressListener;->onTransferProgress(JJJLjava/lang/String;)V

    goto :goto_3

    .line 138
    :catchall_2
    move-exception v3

    monitor-exit v21
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_4
    :try_start_8
    monitor-exit v21
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_1

    .line 140
    :cond_5
    cmp-long v3, v6, v8

    if-nez v3, :cond_c

    .line 141
    const/16 v19, 0x1

    .line 142
    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->mGet:Lorg/apache/commons/httpclient/methods/GetMethod;

    const-string v4, "Last-Modified"

    invoke-virtual {v3, v4}, Lorg/apache/commons/httpclient/methods/GetMethod;->getResponseHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v17

    .line 143
    .local v17, "modificationTime":Lorg/apache/commons/httpclient/Header;
    if-nez v17, :cond_6

    .line 144
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->mGet:Lorg/apache/commons/httpclient/methods/GetMethod;

    const-string v4, "last-modified"

    invoke-virtual {v3, v4}, Lorg/apache/commons/httpclient/methods/GetMethod;->getResponseHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v17

    .line 146
    :cond_6
    if-eqz v17, :cond_b

    .line 147
    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/owncloud/android/lib/common/network/WebdavUtils;->parseResponseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v13

    .line 148
    .local v13, "d":Ljava/util/Date;
    if-eqz v13, :cond_a

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    :goto_4
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->mModificationTimestamp:J

    .line 153
    .end local v13    # "d":Ljava/util/Date;
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->mGet:Lorg/apache/commons/httpclient/methods/GetMethod;

    invoke-static {v3}, Lcom/owncloud/android/lib/common/network/WebdavUtils;->getEtagFromResponse(Lorg/apache/commons/httpclient/HttpMethod;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->mEtag:Ljava/lang/String;

    .line 154
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->mEtag:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_7

    .line 155
    sget-object v3, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not read eTag from response downloading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->mRemotePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .end local v17    # "modificationTime":Lorg/apache/commons/httpclient/Header;
    :cond_7
    :goto_6
    move-object v14, v15

    .line 168
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v6    # "transferred":J
    .end local v8    # "totalToTransfer":J
    .end local v11    # "bytes":[B
    .end local v12    # "contentLength":Lorg/apache/commons/httpclient/Header;
    .end local v15    # "fos":Ljava/io/FileOutputStream;
    .end local v18    # "readResult":I
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    :goto_7
    if-eqz v14, :cond_8

    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 169
    :cond_8
    if-nez v19, :cond_9

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 170
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    .line 172
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->mGet:Lorg/apache/commons/httpclient/methods/GetMethod;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    .line 174
    return v20

    .line 148
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "transferred":J
    .restart local v8    # "totalToTransfer":J
    .restart local v11    # "bytes":[B
    .restart local v12    # "contentLength":Lorg/apache/commons/httpclient/Header;
    .restart local v13    # "d":Ljava/util/Date;
    .restart local v15    # "fos":Ljava/io/FileOutputStream;
    .restart local v17    # "modificationTime":Lorg/apache/commons/httpclient/Header;
    .restart local v18    # "readResult":I
    :cond_a
    const-wide/16 v4, 0x0

    goto :goto_4

    .line 150
    .end local v13    # "d":Ljava/util/Date;
    :cond_b
    :try_start_a
    sget-object v3, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not read modification time from response downloading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->mRemotePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 159
    .end local v17    # "modificationTime":Lorg/apache/commons/httpclient/Header;
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->mGet:Lorg/apache/commons/httpclient/methods/GetMethod;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/methods/GetMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/owncloud/android/lib/common/OwnCloudClient;->exhaustResponse(Ljava/io/InputStream;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_6

    .line 164
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v6    # "transferred":J
    .end local v8    # "totalToTransfer":J
    .end local v11    # "bytes":[B
    .end local v12    # "contentLength":Lorg/apache/commons/httpclient/Header;
    .end local v15    # "fos":Ljava/io/FileOutputStream;
    .end local v18    # "readResult":I
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    :cond_d
    :try_start_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->mGet:Lorg/apache/commons/httpclient/methods/GetMethod;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/methods/GetMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/owncloud/android/lib/common/OwnCloudClient;->exhaustResponse(Ljava/io/InputStream;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_7

    .line 168
    :catchall_3
    move-exception v3

    goto/16 :goto_2
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->mEtag:Ljava/lang/String;

    return-object v0
.end method

.method public getModificationTimestamp()J
    .locals 2

    .prologue
    .line 202
    iget-wide v0, p0, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->mModificationTimestamp:J

    return-wide v0
.end method

.method public removeDatatransferProgressListener(Lcom/owncloud/android/lib/common/network/OnDatatransferProgressListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/owncloud/android/lib/common/network/OnDatatransferProgressListener;

    .prologue
    .line 192
    iget-object v1, p0, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->mDataTransferListeners:Ljava/util/Set;

    monitor-enter v1

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->mDataTransferListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 194
    monitor-exit v1

    .line 195
    return-void

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected run(Lcom/owncloud/android/lib/common/OwnCloudClient;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .locals 8
    .param p1, "client"    # Lcom/owncloud/android/lib/common/OwnCloudClient;

    .prologue
    .line 77
    const/4 v1, 0x0

    .line 80
    .local v1, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    new-instance v4, Ljava/io/File;

    invoke-direct {p0}, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->getTmpPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    .local v4, "tmpFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 85
    invoke-virtual {p0, p1, v4}, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->downloadFile(Lcom/owncloud/android/lib/common/OwnCloudClient;Ljava/io/File;)I

    move-result v3

    .line 86
    .local v3, "status":I
    new-instance v2, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    invoke-direct {p0, v3}, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->isSuccess(I)Z

    move-result v5

    iget-object v6, p0, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->mGet:Lorg/apache/commons/httpclient/methods/GetMethod;

    invoke-direct {v2, v5, v6}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZLorg/apache/commons/httpclient/HttpMethod;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v1    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v2, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_1
    sget-object v5, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Download of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->mRemotePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->getTmpPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 88
    invoke-virtual {v2}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getLogMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 87
    invoke-static {v5, v6}, Lcom/owncloud/android/lib/common/utils/Log_OC;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 96
    .end local v2    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .end local v3    # "status":I
    .restart local v1    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_0
    return-object v1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v1, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    .end local v1    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    invoke-direct {v1, v0}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Ljava/lang/Exception;)V

    .line 92
    .restart local v1    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    sget-object v5, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Download of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->mRemotePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/owncloud/android/lib/resources/files/DownloadRemoteFileOperation;->getTmpPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 93
    invoke-virtual {v1}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getLogMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 92
    invoke-static {v5, v6, v0}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 90
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v2    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v3    # "status":I
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v1    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_1
.end method
