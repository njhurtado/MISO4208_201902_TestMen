.class public Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;
.super Ljava/lang/Object;
.source "ChunkFromFileChannelRequestEntity.java"

# interfaces
.implements Lorg/apache/commons/httpclient/methods/RequestEntity;
.implements Lcom/owncloud/android/lib/common/network/ProgressiveDataTransferer;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private final mChannel:Ljava/nio/channels/FileChannel;

.field private final mChunkSize:J

.field private final mContentType:Ljava/lang/String;

.field mDataTransferListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/owncloud/android/lib/common/network/OnDatatransferProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mFile:Ljava/io/File;

.field private mOffset:J

.field private mTransferred:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/FileChannel;Ljava/lang/String;JLjava/io/File;)V
    .locals 5
    .param p1, "channel"    # Ljava/nio/channels/FileChannel;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "chunkSize"    # J
    .param p5, "file"    # Ljava/io/File;

    .prologue
    const-wide/16 v2, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;->mDataTransferListeners:Ljava/util/Set;

    .line 60
    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;->mBuffer:Ljava/nio/ByteBuffer;

    .line 66
    if-nez p1, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    cmp-long v0, p3, v2

    if-gtz v0, :cond_1

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Chunk size must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1
    iput-object p1, p0, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;->mChannel:Ljava/nio/channels/FileChannel;

    .line 73
    iput-object p2, p0, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;->mContentType:Ljava/lang/String;

    .line 74
    iput-wide p3, p0, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;->mChunkSize:J

    .line 75
    iput-object p5, p0, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;->mFile:Ljava/io/File;

    .line 76
    iput-wide v2, p0, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;->mOffset:J

    .line 77
    iput-wide v2, p0, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;->mTransferred:J

    .line 78
    return-void
.end method


# virtual methods
.method public addDatatransferProgressListener(Lcom/owncloud/android/lib/common/network/OnDatatransferProgressListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/owncloud/android/lib/common/network/OnDatatransferProgressListener;

    .prologue
    .line 102
    iget-object v1, p0, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;->mDataTransferListeners:Ljava/util/Set;

    monitor-enter v1

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;->mDataTransferListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    monitor-exit v1

    .line 105
    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addDatatransferProgressListeners(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/owncloud/android/lib/common/network/OnDatatransferProgressListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "listeners":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/owncloud/android/lib/common/network/OnDatatransferProgressListener;>;"
    iget-object v1, p0, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;->mDataTransferListeners:Ljava/util/Set;

    monitor-enter v1

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;->mDataTransferListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 111
    monitor-exit v1

    .line 112
    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getContentLength()J
    .locals 8

    .prologue
    .line 86
    :try_start_0
    iget-wide v2, p0, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;->mChunkSize:J

    iget-object v1, p0, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;->mChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;->mOffset:J

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 88
    :goto_0
    return-wide v2

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/io/IOException;
    iget-wide v2, p0, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;->mChunkSize:J

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public removeDatatransferProgressListener(Lcom/owncloud/android/lib/common/network/OnDatatransferProgressListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/owncloud/android/lib/common/network/OnDatatransferProgressListener;

    .prologue
    .line 116
    iget-object v1, p0, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;->mDataTransferListeners:Ljava/util/Set;

    monitor-enter v1

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;->mDataTransferListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 118
    monitor-exit v1

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOffset(J)V
    .locals 1
    .param p1, "offset"    # J

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;->mOffset:J

    .line 82
    return-void
.end method

.method public setmTransferred(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 123
    iput-wide p1, p0, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;->mTransferred:J

    .line 124
    return-void
.end method

.method public writeRequest(Ljava/io/OutputStream;)V
    .locals 18
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    const/4 v13, 0x0

    .line 128
    .local v13, "readCount":I
    const/4 v12, 0x0

    .line 131
    .local v12, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/owncloud/android/lib/common/network/OnDatatransferProgressListener;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;->mChannel:Ljava/nio/channels/FileChannel;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;->mOffset:J

    invoke-virtual {v3, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 132
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 133
    .local v8, "size":J
    const-wide/16 v4, 0x0

    cmp-long v3, v8, v4

    if-nez v3, :cond_0

    const-wide/16 v8, -0x1

    .line 134
    :cond_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;->mOffset:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;->mChunkSize:J

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;->mChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    .line 135
    .local v14, "maxCount":J
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;->mChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    cmp-long v3, v4, v14

    if-gez v3, :cond_4

    .line 136
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;->mChannel:Ljava/nio/channels/FileChannel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/owncloud/android/lib/common/network/FileRequestEntity$WriteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v13

    .line 138
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v13}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/owncloud/android/lib/common/network/FileRequestEntity$WriteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 143
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 144
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;->mTransferred:J

    cmp-long v3, v4, v14

    if-gez v3, :cond_1

    .line 145
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;->mTransferred:J

    int-to-long v6, v13

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;->mTransferred:J

    .line 147
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;->mDataTransferListeners:Ljava/util/Set;

    move-object/from16 v17, v0

    monitor-enter v17
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/owncloud/android/lib/common/network/FileRequestEntity$WriteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 148
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;->mDataTransferListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 149
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 150
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/owncloud/android/lib/common/network/OnDatatransferProgressListener;

    int-to-long v4, v13

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;->mTransferred:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/owncloud/android/lib/common/network/ChunkFromFileChannelRequestEntity;->mFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-interface/range {v3 .. v10}, Lcom/owncloud/android/lib/common/network/OnDatatransferProgressListener;->onTransferProgress(JJJLjava/lang/String;)V

    goto :goto_1

    .line 152
    :catchall_0
    move-exception v3

    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/owncloud/android/lib/common/network/FileRequestEntity$WriteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 155
    .end local v8    # "size":J
    .end local v14    # "maxCount":J
    :catch_0
    move-exception v11

    .line 157
    .local v11, "io":Ljava/io/IOException;
    instance-of v3, v11, Ljava/io/FileNotFoundException;

    if-eqz v3, :cond_3

    .line 158
    throw v11

    .line 139
    .end local v11    # "io":Ljava/io/IOException;
    .restart local v8    # "size":J
    .restart local v14    # "maxCount":J
    :catch_1
    move-exception v11

    .line 141
    .restart local v11    # "io":Ljava/io/IOException;
    :try_start_5
    new-instance v3, Lcom/owncloud/android/lib/common/network/FileRequestEntity$WriteException;

    invoke-direct {v3, v11}, Lcom/owncloud/android/lib/common/network/FileRequestEntity$WriteException;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/owncloud/android/lib/common/network/FileRequestEntity$WriteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 165
    .end local v8    # "size":J
    .end local v11    # "io":Ljava/io/IOException;
    .end local v14    # "maxCount":J
    :catch_2
    move-exception v16

    .line 166
    .local v16, "we":Lcom/owncloud/android/lib/common/network/FileRequestEntity$WriteException;
    invoke-virtual/range {v16 .. v16}, Lcom/owncloud/android/lib/common/network/FileRequestEntity$WriteException;->getWrapped()Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 152
    .end local v16    # "we":Lcom/owncloud/android/lib/common/network/FileRequestEntity$WriteException;
    .restart local v8    # "size":J
    .restart local v14    # "maxCount":J
    :cond_2
    :try_start_6
    monitor-exit v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 160
    .end local v8    # "size":J
    .end local v14    # "maxCount":J
    .restart local v11    # "io":Ljava/io/IOException;
    :cond_3
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "Exception reading source file"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 161
    .local v2, "fnf":Ljava/io/FileNotFoundException;
    invoke-virtual {v2, v11}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 162
    throw v2

    .line 169
    .end local v2    # "fnf":Ljava/io/FileNotFoundException;
    .end local v11    # "io":Ljava/io/IOException;
    .restart local v8    # "size":J
    .restart local v14    # "maxCount":J
    :cond_4
    return-void
.end method
