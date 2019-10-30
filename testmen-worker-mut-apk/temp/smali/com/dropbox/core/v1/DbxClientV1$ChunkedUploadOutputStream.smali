.class final Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;
.super Ljava/io/OutputStream;
.source "DbxClientV1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v1/DbxClientV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ChunkedUploadOutputStream"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final chunk:[B

.field private chunkPos:I

.field final synthetic this$0:Lcom/dropbox/core/v1/DbxClientV1;

.field private uploadId:Ljava/lang/String;

.field private uploadOffset:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1332
    const-class v0, Lcom/dropbox/core/v1/DbxClientV1;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/dropbox/core/v1/DbxClientV1;I)V
    .locals 2
    .param p2, "chunkSize"    # I

    .prologue
    const/4 v1, 0x0

    .line 1340
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->this$0:Lcom/dropbox/core/v1/DbxClientV1;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 1335
    iput v1, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->chunkPos:I

    .line 1341
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->chunk:[B

    .line 1342
    iput v1, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->chunkPos:I

    .line 1343
    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/core/v1/DbxClientV1;ILcom/dropbox/core/v1/DbxClientV1$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dropbox/core/v1/DbxClientV1;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/dropbox/core/v1/DbxClientV1$1;

    .prologue
    .line 1332
    invoke-direct {p0, p1, p2}, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;-><init>(Lcom/dropbox/core/v1/DbxClientV1;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;)I
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;

    .prologue
    .line 1332
    iget v0, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->chunkPos:I

    return v0
.end method

.method static synthetic access$600(Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;)[B
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->chunk:[B

    return-object v0
.end method

.method static synthetic access$700(Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;)V
    .locals 0
    .param p0, "x0"    # Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1332
    invoke-direct {p0}, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->finishChunk()V

    return-void
.end method

.method static synthetic access$800(Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;)J
    .locals 2
    .param p0, "x0"    # Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;

    .prologue
    .line 1332
    iget-wide v0, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->uploadOffset:J

    return-wide v0
.end method

.method private finishChunk()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x3

    .line 1370
    iget v8, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->chunkPos:I

    if-nez v8, :cond_0

    .line 1406
    :goto_0
    return-void

    .line 1372
    :cond_0
    iget-object v8, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->uploadId:Ljava/lang/String;

    if-nez v8, :cond_1

    .line 1376
    new-instance v8, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream$1;

    invoke-direct {v8, p0}, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream$1;-><init>(Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;)V

    invoke-static {v12, v8}, Lcom/dropbox/core/DbxRequestUtil;->runAndRetry(ILcom/dropbox/core/DbxRequestUtil$RequestMaker;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->uploadId:Ljava/lang/String;

    .line 1381
    iget v8, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->chunkPos:I

    int-to-long v8, v8

    iput-wide v8, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->uploadOffset:J

    .line 1405
    :goto_1
    const/4 v8, 0x0

    iput v8, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->chunkPos:I

    goto :goto_0

    .line 1383
    :cond_1
    iget-object v3, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->uploadId:Ljava/lang/String;

    .line 1384
    .local v3, "uploadId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1386
    .local v1, "arrayOffset":I
    :goto_2
    move v2, v1

    .line 1388
    .local v2, "arrayOffsetFinal":I
    new-instance v8, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream$2;

    invoke-direct {v8, p0, v3, v2}, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream$2;-><init>(Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;Ljava/lang/String;I)V

    invoke-static {v12, v8}, Lcom/dropbox/core/DbxRequestUtil;->runAndRetry(ILcom/dropbox/core/DbxRequestUtil$RequestMaker;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1393
    .local v4, "correctedOffset":J
    iget-wide v8, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->uploadOffset:J

    iget v10, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->chunkPos:I

    int-to-long v10, v10

    add-long v6, v8, v10

    .line 1394
    .local v6, "expectedOffset":J
    const-wide/16 v8, -0x1

    cmp-long v8, v4, v8

    if-nez v8, :cond_2

    .line 1396
    iput-wide v6, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->uploadOffset:J

    goto :goto_1

    .line 1400
    :cond_2
    iget-wide v8, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->uploadOffset:J

    sub-long v8, v4, v8

    long-to-int v0, v8

    .line 1401
    .local v0, "adjustAmount":I
    add-int/2addr v1, v0

    .line 1403
    goto :goto_2
.end method

.method private finishChunkIfNecessary()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1361
    sget-boolean v0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->chunkPos:I

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->chunk:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1362
    :cond_0
    iget v0, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->chunkPos:I

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->chunk:[B

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 1363
    invoke-direct {p0}, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->finishChunk()V

    .line 1365
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1434
    return-void
.end method

.method public write(I)V
    .locals 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1349
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->chunk:[B

    iget v2, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->chunkPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->chunkPos:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 1351
    :try_start_0
    invoke-direct {p0}, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->finishChunkIfNecessary()V
    :try_end_0
    .catch Lcom/dropbox/core/DbxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1356
    return-void

    .line 1353
    :catch_0
    move-exception v0

    .line 1354
    .local v0, "ex":Lcom/dropbox/core/DbxException;
    new-instance v1, Lcom/dropbox/core/v1/DbxClientV1$IODbxException;

    invoke-direct {v1, v0}, Lcom/dropbox/core/v1/DbxClientV1$IODbxException;-><init>(Lcom/dropbox/core/DbxException;)V

    throw v1
.end method

.method public write([BII)V
    .locals 8
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1412
    add-int v2, p2, p3

    .line 1413
    .local v2, "inputEnd":I
    move v3, p2

    .line 1414
    .local v3, "inputPos":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1415
    iget-object v6, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->chunk:[B

    array-length v6, v6

    iget v7, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->chunkPos:I

    sub-int v5, v6, v7

    .line 1416
    .local v5, "spaceInChunk":I
    sub-int v4, v2, v3

    .line 1417
    .local v4, "leftToWrite":I
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1418
    .local v0, "bytesToCopy":I
    iget-object v6, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->chunk:[B

    iget v7, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->chunkPos:I

    invoke-static {p1, v3, v6, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1419
    iget v6, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->chunkPos:I

    add-int/2addr v6, v0

    iput v6, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->chunkPos:I

    .line 1420
    add-int/2addr v3, v0

    .line 1422
    :try_start_0
    invoke-direct {p0}, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->finishChunkIfNecessary()V
    :try_end_0
    .catch Lcom/dropbox/core/DbxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1424
    :catch_0
    move-exception v1

    .line 1425
    .local v1, "ex":Lcom/dropbox/core/DbxException;
    new-instance v6, Lcom/dropbox/core/v1/DbxClientV1$IODbxException;

    invoke-direct {v6, v1}, Lcom/dropbox/core/v1/DbxClientV1$IODbxException;-><init>(Lcom/dropbox/core/DbxException;)V

    throw v6

    .line 1428
    .end local v0    # "bytesToCopy":I
    .end local v1    # "ex":Lcom/dropbox/core/DbxException;
    .end local v4    # "leftToWrite":I
    .end local v5    # "spaceInChunk":I
    :cond_0
    return-void
.end method
