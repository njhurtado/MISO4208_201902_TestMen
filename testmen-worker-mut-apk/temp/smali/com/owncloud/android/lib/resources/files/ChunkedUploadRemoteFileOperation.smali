.class public Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;
.super Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;
.source "ChunkedUploadRemoteFileOperation.java"


# static fields
.field public static final CHUNK_SIZE:J = 0xfa000L

.field private static final LAST_CHUNK_TIMEOUT:I = 0xdbba0

.field private static final OC_CHUNKED_HEADER:Ljava/lang/String; = "OC-Chunked"

.field private static final OC_CHUNK_SIZE_HEADER:Ljava/lang/String; = "OC-Chunk-Size"

.field private static final OC_CHUNK_X_OC_MTIME_HEADER:Ljava/lang/String; = "X-OC-Mtime"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storagePath"    # Ljava/lang/String;
    .param p3, "remotePath"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "requiredEtag"    # Ljava/lang/String;
    .param p6, "fileLastModifTimestamp"    # Ljava/lang/String;

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "storagePath"    # Ljava/lang/String;
    .param p2, "remotePath"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "requiredEtag"    # Ljava/lang/String;
    .param p5, "fileLastModifTimestamp"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct/range {p0 .. p5}, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method private createPutMethod(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;J)Lorg/apache/commons/httpclient/methods/PutMethod;
    .locals 4
    .param p1, "uriPrefix"    # Ljava/lang/String;
    .param p2, "chunkCount"    # J
    .param p4, "chunkIndex"    # I
    .param p5, "chunkSizeStr"    # Ljava/lang/String;
    .param p6, "totalLengthStr"    # Ljava/lang/String;
    .param p7, "offset"    # J

    .prologue
    .line 165
    new-instance v0, Lorg/apache/commons/httpclient/methods/PutMethod;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/methods/PutMethod;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->mPutMethod:Lorg/apache/commons/httpclient/methods/PutMethod;

    .line 166
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->mRequiredEtag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->mRequiredEtag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->mPutMethod:Lorg/apache/commons/httpclient/methods/PutMethod;

    const-string v1, "If-Match"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->mRequiredEtag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/httpclient/methods/PutMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->mPutMethod:Lorg/apache/commons/httpclient/methods/PutMethod;

    const-string v1, "OC-Chunked"

    const-string v2, "OC-Chunked"

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/httpclient/methods/PutMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->mPutMethod:Lorg/apache/commons/httpclient/methods/PutMethod;

    const-string v1, "OC-Chunk-Size"

    invoke-virtual {v0, v1, p5}, Lorg/apache/commons/httpclient/methods/PutMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->mPutMethod:Lorg/apache/commons/httpclient/methods/PutMethod;

    const-string v1, "OC-Total-Length"

    invoke-virtual {v0, v1, p6}, Lorg/apache/commons/httpclient/methods/PutMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->mPutMethod:Lorg/apache/commons/httpclient/methods/PutMethod;

    const-string v1, "X-OC-Mtime"

    iget-object v2, p0, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->mFileLastModifTimestamp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/httpclient/methods/PutMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->mEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    check-cast v0, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;

    invoke-virtual {v0, p7, p8}, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;->setOffset(J)V

    .line 174
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->mPutMethod:Lorg/apache/commons/httpclient/methods/PutMethod;

    iget-object v1, p0, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->mEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/methods/PutMethod;->setRequestEntity(Lorg/apache/commons/httpclient/methods/RequestEntity;)V

    .line 175
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->mCancellationRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->mPutMethod:Lorg/apache/commons/httpclient/methods/PutMethod;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/PutMethod;->abort()V

    .line 180
    :cond_1
    int-to-long v0, p4

    const-wide/16 v2, 0x1

    sub-long v2, p2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->mPutMethod:Lorg/apache/commons/httpclient/methods/PutMethod;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/PutMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v0

    const v1, 0xdbba0

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setSoTimeout(I)V

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->mPutMethod:Lorg/apache/commons/httpclient/methods/PutMethod;

    return-object v0
.end method

.method private getDateAsString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 191
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 192
    .local v0, "calendar":Ljava/util/Calendar;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    .line 193
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    .line 194
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 192
    return-object v1
.end method


# virtual methods
.method protected uploadFile(Lcom/owncloud/android/lib/common/OwnCloudClient;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .locals 32
    .param p1, "client"    # Lcom/owncloud/android/lib/common/OwnCloudClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    const/16 v25, -0x1

    .line 73
    .local v25, "status":I
    const/16 v22, 0x0

    .line 75
    .local v22, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    const/4 v4, 0x0

    .line 76
    .local v4, "channel":Ljava/nio/channels/FileChannel;
    const/16 v20, 0x0

    .line 78
    .local v20, "raf":Ljava/io/RandomAccessFile;
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->mLocalPath:Ljava/lang/String;

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v8, "file":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "com.nextcloud.PREFERENCE_upload"

    const/4 v6, 0x0

    .line 80
    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    .line 81
    .local v24, "sharedPref":Landroid/content/SharedPreferences;
    const-string v3, "%08d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "chunkId":Ljava/lang/String;
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    move-object/from16 v0, v24

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v26

    .line 85
    .local v26, "successfulChunks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    new-instance v21, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    move-object/from16 v0, v21

    invoke-direct {v0, v8, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 86
    .end local v20    # "raf":Ljava/io/RandomAccessFile;
    .local v21, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual/range {v21 .. v21}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 87
    new-instance v3, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->mMimeType:Ljava/lang/String;

    const-wide/32 v6, 0xfa000

    invoke-direct/range {v3 .. v8}, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;-><init>(Ljava/nio/channels/FileChannel;Ljava/lang/String;JLjava/io/File;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->mEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    .line 88
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->mDataTransferListeners:Ljava/util/Set;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 89
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->mEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    check-cast v3, Lcom/owncloud/android/lib/common/network/ProgressiveDataTransferer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->mDataTransferListeners:Ljava/util/Set;

    .line 90
    invoke-interface {v3, v6}, Lcom/owncloud/android/lib/common/network/ProgressiveDataTransferer;->addDatatransferProgressListeners(Ljava/util/Collection;)V

    .line 91
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    const-wide/16 v17, 0x0

    .line 94
    .local v17, "offset":J
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getWebdavUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->mRemotePath:Ljava/lang/String;

    invoke-static {v5}, Lcom/owncloud/android/lib/common/network/WebdavUtils;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "-chunking-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 96
    .local v11, "uriPrefix":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v28

    .line 97
    .local v28, "totalLength":J
    move-wide/from16 v0, v28

    long-to-double v6, v0

    const-wide v30, 0x412f400000000000L    # 1024000.0

    div-double v6, v6, v30

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-long v12, v6

    .line 98
    .local v12, "chunkCount":J
    const-wide/32 v6, 0xfa000

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    .line 99
    .local v15, "chunkSizeStr":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v16

    .line 100
    .local v16, "totalLengthStr":Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "chunkIndex":I
    move-object/from16 v23, v22

    .end local v22    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v23, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_0
    int-to-long v6, v14

    cmp-long v3, v6, v12

    if-gez v3, :cond_c

    .line 101
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->getDateAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 102
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->mEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    check-cast v3, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;->setmTransferred(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v22, v23

    .line 100
    .end local v23    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v22    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_1
    add-int/lit8 v14, v14, 0x1

    const-wide/32 v6, 0xfa000

    add-long v17, v17, v6

    move-object/from16 v23, v22

    .end local v22    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v23    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_0

    .line 91
    .end local v11    # "uriPrefix":Ljava/lang/String;
    .end local v12    # "chunkCount":J
    .end local v14    # "chunkIndex":I
    .end local v15    # "chunkSizeStr":Ljava/lang/String;
    .end local v16    # "totalLengthStr":Ljava/lang/String;
    .end local v17    # "offset":J
    .end local v23    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .end local v28    # "totalLength":J
    .restart local v22    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 133
    :catchall_1
    move-exception v3

    move-object/from16 v20, v21

    .end local v21    # "raf":Ljava/io/RandomAccessFile;
    .restart local v20    # "raf":Ljava/io/RandomAccessFile;
    :goto_2
    invoke-interface/range {v24 .. v24}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    .line 134
    .local v19, "editor":Landroid/content/SharedPreferences$Editor;
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->isSuccess(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 135
    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 140
    :goto_3
    if-eqz v4, :cond_0

    .line 142
    :try_start_7
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 146
    :cond_0
    :goto_4
    if-eqz v20, :cond_1

    .line 148
    :try_start_8
    invoke-virtual/range {v20 .. v20}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 153
    :cond_1
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->mPutMethod:Lorg/apache/commons/httpclient/methods/PutMethod;

    if-eqz v5, :cond_2

    .line 154
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->mPutMethod:Lorg/apache/commons/httpclient/methods/PutMethod;

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/methods/PutMethod;->releaseConnection()V

    .line 155
    :cond_2
    throw v3

    .line 106
    .end local v19    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v20    # "raf":Ljava/io/RandomAccessFile;
    .end local v22    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v11    # "uriPrefix":Ljava/lang/String;
    .restart local v12    # "chunkCount":J
    .restart local v14    # "chunkIndex":I
    .restart local v15    # "chunkSizeStr":Ljava/lang/String;
    .restart local v16    # "totalLengthStr":Ljava/lang/String;
    .restart local v17    # "offset":J
    .restart local v21    # "raf":Ljava/io/RandomAccessFile;
    .restart local v23    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v28    # "totalLength":J
    :cond_3
    int-to-long v6, v14

    const-wide/16 v30, 0x1

    sub-long v30, v12, v30

    cmp-long v3, v6, v30

    if-nez v3, :cond_4

    .line 107
    const-wide/32 v6, 0xfa000

    mul-long/2addr v6, v12

    sub-long v6, v6, v28

    :try_start_9
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    .line 109
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->mPutMethod:Lorg/apache/commons/httpclient/methods/PutMethod;

    if-eqz v3, :cond_5

    .line 110
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->mPutMethod:Lorg/apache/commons/httpclient/methods/PutMethod;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/methods/PutMethod;->releaseConnection()V

    :cond_5
    move-object/from16 v10, p0

    .line 114
    invoke-direct/range {v10 .. v18}, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->createPutMethod(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;J)Lorg/apache/commons/httpclient/methods/PutMethod;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->mPutMethod:Lorg/apache/commons/httpclient/methods/PutMethod;

    .line 116
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->mPutMethod:Lorg/apache/commons/httpclient/methods/PutMethod;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/owncloud/android/lib/common/OwnCloudClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    move-result v25

    .line 118
    new-instance v22, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->isSuccess(I)Z

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->mPutMethod:Lorg/apache/commons/httpclient/methods/PutMethod;

    move-object/from16 v0, v22

    invoke-direct {v0, v3, v5}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZLorg/apache/commons/httpclient/HttpMethod;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 120
    .end local v23    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v22    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->mPutMethod:Lorg/apache/commons/httpclient/methods/PutMethod;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/methods/PutMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/owncloud/android/lib/common/OwnCloudClient;->exhaustResponse(Ljava/io/InputStream;)V

    .line 121
    sget-object v3, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Upload of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->mLocalPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->mRemotePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", chunk index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", count "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", HTTP result status "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->isSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->getDateAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 128
    :cond_6
    invoke-interface/range {v24 .. v24}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-interface {v3, v2, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 133
    :goto_6
    invoke-interface/range {v24 .. v24}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    .line 134
    .restart local v19    # "editor":Landroid/content/SharedPreferences$Editor;
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->isSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 135
    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 140
    :goto_7
    if-eqz v4, :cond_7

    .line 142
    :try_start_b
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    .line 146
    :cond_7
    :goto_8
    if-eqz v21, :cond_8

    .line 148
    :try_start_c
    invoke-virtual/range {v21 .. v21}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    .line 153
    :cond_8
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->mPutMethod:Lorg/apache/commons/httpclient/methods/PutMethod;

    if-eqz v3, :cond_9

    .line 154
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->mPutMethod:Lorg/apache/commons/httpclient/methods/PutMethod;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/methods/PutMethod;->releaseConnection()V

    .line 156
    :cond_9
    return-object v22

    .line 137
    :cond_a
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_7

    .line 143
    :catch_0
    move-exception v9

    .line 144
    .local v9, "e":Ljava/io/IOException;
    sget-object v3, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->TAG:Ljava/lang/String;

    const-string v5, "Error closing file channel!"

    invoke-static {v3, v5, v9}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 149
    .end local v9    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v9

    .line 150
    .restart local v9    # "e":Ljava/io/IOException;
    sget-object v3, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->TAG:Ljava/lang/String;

    const-string v5, "Error closing file access!"

    invoke-static {v3, v5, v9}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 137
    .end local v9    # "e":Ljava/io/IOException;
    .end local v11    # "uriPrefix":Ljava/lang/String;
    .end local v12    # "chunkCount":J
    .end local v14    # "chunkIndex":I
    .end local v15    # "chunkSizeStr":Ljava/lang/String;
    .end local v16    # "totalLengthStr":Ljava/lang/String;
    .end local v17    # "offset":J
    .end local v21    # "raf":Ljava/io/RandomAccessFile;
    .end local v28    # "totalLength":J
    .restart local v20    # "raf":Ljava/io/RandomAccessFile;
    :cond_b
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_3

    .line 143
    :catch_2
    move-exception v9

    .line 144
    .restart local v9    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->TAG:Ljava/lang/String;

    const-string v6, "Error closing file channel!"

    invoke-static {v5, v6, v9}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 149
    .end local v9    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v9

    .line 150
    .restart local v9    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/owncloud/android/lib/resources/files/ChunkedUploadRemoteFileOperation;->TAG:Ljava/lang/String;

    const-string v6, "Error closing file access!"

    invoke-static {v5, v6, v9}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 133
    .end local v9    # "e":Ljava/io/IOException;
    .end local v19    # "editor":Landroid/content/SharedPreferences$Editor;
    :catchall_2
    move-exception v3

    goto/16 :goto_2

    .end local v20    # "raf":Ljava/io/RandomAccessFile;
    .end local v22    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v11    # "uriPrefix":Ljava/lang/String;
    .restart local v12    # "chunkCount":J
    .restart local v14    # "chunkIndex":I
    .restart local v15    # "chunkSizeStr":Ljava/lang/String;
    .restart local v16    # "totalLengthStr":Ljava/lang/String;
    .restart local v17    # "offset":J
    .restart local v21    # "raf":Ljava/io/RandomAccessFile;
    .restart local v23    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v28    # "totalLength":J
    :catchall_3
    move-exception v3

    move-object/from16 v20, v21

    .end local v21    # "raf":Ljava/io/RandomAccessFile;
    .restart local v20    # "raf":Ljava/io/RandomAccessFile;
    move-object/from16 v22, v23

    .end local v23    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v22    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto/16 :goto_2

    .end local v20    # "raf":Ljava/io/RandomAccessFile;
    .end local v22    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v21    # "raf":Ljava/io/RandomAccessFile;
    .restart local v23    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :cond_c
    move-object/from16 v22, v23

    .end local v23    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v22    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_6
.end method
