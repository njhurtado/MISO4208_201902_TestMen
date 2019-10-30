.class public Lcom/owncloud/android/lib/common/network/FileRequestEntity;
.super Ljava/lang/Object;
.source "FileRequestEntity.java"

# interfaces
.implements Lorg/apache/commons/httpclient/methods/RequestEntity;
.implements Lcom/owncloud/android/lib/common/network/ProgressiveDataTransferer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/owncloud/android/lib/common/network/FileRequestEntity$WriteException;
    }
.end annotation


# instance fields
.field final mContentType:Ljava/lang/String;

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

.field final mFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "contentType"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/owncloud/android/lib/common/network/FileRequestEntity;->mDataTransferListeners:Ljava/util/Set;

    .line 58
    iput-object p1, p0, Lcom/owncloud/android/lib/common/network/FileRequestEntity;->mFile:Ljava/io/File;

    .line 59
    iput-object p2, p0, Lcom/owncloud/android/lib/common/network/FileRequestEntity;->mContentType:Ljava/lang/String;

    .line 60
    if-nez p1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    return-void
.end method


# virtual methods
.method public addDatatransferProgressListener(Lcom/owncloud/android/lib/common/network/OnDatatransferProgressListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/owncloud/android/lib/common/network/OnDatatransferProgressListener;

    .prologue
    .line 82
    iget-object v1, p0, Lcom/owncloud/android/lib/common/network/FileRequestEntity;->mDataTransferListeners:Ljava/util/Set;

    monitor-enter v1

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/FileRequestEntity;->mDataTransferListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    monitor-exit v1

    .line 85
    return-void

    .line 84
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
    .line 89
    .local p1, "listeners":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/owncloud/android/lib/common/network/OnDatatransferProgressListener;>;"
    iget-object v1, p0, Lcom/owncloud/android/lib/common/network/FileRequestEntity;->mDataTransferListeners:Ljava/util/Set;

    monitor-enter v1

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/FileRequestEntity;->mDataTransferListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 91
    monitor-exit v1

    .line 92
    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/FileRequestEntity;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/FileRequestEntity;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public removeDatatransferProgressListener(Lcom/owncloud/android/lib/common/network/OnDatatransferProgressListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/owncloud/android/lib/common/network/OnDatatransferProgressListener;

    .prologue
    .line 96
    iget-object v1, p0, Lcom/owncloud/android/lib/common/network/FileRequestEntity;->mDataTransferListeners:Ljava/util/Set;

    monitor-enter v1

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/FileRequestEntity;->mDataTransferListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 98
    monitor-exit v1

    .line 99
    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public writeRequest(Ljava/io/OutputStream;)V
    .locals 19
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    const/16 v3, 0x1000

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v16

    .line 105
    .local v16, "tmp":Ljava/nio/ByteBuffer;
    const/4 v15, 0x0

    .line 107
    .local v15, "readResult":I
    new-instance v14, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/owncloud/android/lib/common/network/FileRequestEntity;->mFile:Ljava/io/File;

    const-string v4, "r"

    invoke-direct {v14, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 108
    .local v14, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 109
    .local v2, "channel":Ljava/nio/channels/FileChannel;
    const/4 v13, 0x0

    .line 110
    .local v13, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/owncloud/android/lib/common/network/OnDatatransferProgressListener;>;"
    const-wide/16 v6, 0x0

    .line 111
    .local v6, "transferred":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/owncloud/android/lib/common/network/FileRequestEntity;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 112
    .local v8, "size":J
    const-wide/16 v4, 0x0

    cmp-long v3, v8, v4

    if-nez v3, :cond_0

    const-wide/16 v8, -0x1

    .line 114
    :cond_0
    :goto_0
    :try_start_0
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/owncloud/android/lib/common/network/FileRequestEntity$WriteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v15

    if-ltz v15, :cond_2

    .line 116
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v15}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/owncloud/android/lib/common/network/FileRequestEntity$WriteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 121
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 122
    int-to-long v4, v15

    add-long/2addr v6, v4

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/owncloud/android/lib/common/network/FileRequestEntity;->mDataTransferListeners:Ljava/util/Set;

    move-object/from16 v18, v0

    monitor-enter v18
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/owncloud/android/lib/common/network/FileRequestEntity$WriteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 124
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/owncloud/android/lib/common/network/FileRequestEntity;->mDataTransferListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 125
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/owncloud/android/lib/common/network/OnDatatransferProgressListener;

    int-to-long v4, v15

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/owncloud/android/lib/common/network/FileRequestEntity;->mFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-interface/range {v3 .. v10}, Lcom/owncloud/android/lib/common/network/OnDatatransferProgressListener;->onTransferProgress(JJJLjava/lang/String;)V

    goto :goto_1

    .line 128
    :catchall_0
    move-exception v3

    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/owncloud/android/lib/common/network/FileRequestEntity$WriteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 131
    :catch_0
    move-exception v12

    .line 133
    .local v12, "io":Ljava/io/IOException;
    :try_start_5
    instance-of v3, v12, Ljava/io/FileNotFoundException;

    if-eqz v3, :cond_3

    .line 134
    throw v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 145
    .end local v12    # "io":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    .line 146
    :try_start_6
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 147
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 150
    :goto_2
    throw v3

    .line 117
    :catch_1
    move-exception v12

    .line 119
    .restart local v12    # "io":Ljava/io/IOException;
    :try_start_7
    new-instance v3, Lcom/owncloud/android/lib/common/network/FileRequestEntity$WriteException;

    invoke-direct {v3, v12}, Lcom/owncloud/android/lib/common/network/FileRequestEntity$WriteException;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lcom/owncloud/android/lib/common/network/FileRequestEntity$WriteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 141
    .end local v12    # "io":Ljava/io/IOException;
    :catch_2
    move-exception v17

    .line 142
    .local v17, "we":Lcom/owncloud/android/lib/common/network/FileRequestEntity$WriteException;
    :try_start_8
    invoke-virtual/range {v17 .. v17}, Lcom/owncloud/android/lib/common/network/FileRequestEntity$WriteException;->getWrapped()Ljava/io/IOException;

    move-result-object v3

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 128
    .end local v17    # "we":Lcom/owncloud/android/lib/common/network/FileRequestEntity$WriteException;
    :cond_1
    :try_start_9
    monitor-exit v18
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    .line 146
    :cond_2
    :try_start_a
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 147
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 152
    :goto_3
    return-void

    .line 136
    .restart local v12    # "io":Ljava/io/IOException;
    :cond_3
    :try_start_b
    new-instance v11, Ljava/io/FileNotFoundException;

    const-string v3, "Exception reading source file"

    invoke-direct {v11, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 137
    .local v11, "fnf":Ljava/io/FileNotFoundException;
    invoke-virtual {v11, v12}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 138
    throw v11
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 148
    .end local v11    # "fnf":Ljava/io/FileNotFoundException;
    .end local v12    # "io":Ljava/io/IOException;
    :catch_3
    move-exception v4

    goto :goto_2

    :catch_4
    move-exception v3

    goto :goto_3
.end method
