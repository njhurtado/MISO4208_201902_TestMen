.class final Lcom/dropbox/core/v1/DbxClientV1$SingleUploader;
.super Lcom/dropbox/core/v1/DbxClientV1$Uploader;
.source "DbxClientV1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v1/DbxClientV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleUploader"
.end annotation


# instance fields
.field private final body:Lcom/dropbox/core/util/CountingOutputStream;

.field private final claimedBytes:J

.field private httpUploader:Lcom/dropbox/core/http/HttpRequestor$Uploader;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/http/HttpRequestor$Uploader;J)V
    .locals 2
    .param p1, "httpUploader"    # Lcom/dropbox/core/http/HttpRequestor$Uploader;
    .param p2, "claimedBytes"    # J

    .prologue
    .line 768
    invoke-direct {p0}, Lcom/dropbox/core/v1/DbxClientV1$Uploader;-><init>()V

    .line 769
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 770
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'numBytes\' must be greater than or equal to 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 773
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxClientV1$SingleUploader;->httpUploader:Lcom/dropbox/core/http/HttpRequestor$Uploader;

    .line 774
    iput-wide p2, p0, Lcom/dropbox/core/v1/DbxClientV1$SingleUploader;->claimedBytes:J

    .line 775
    new-instance v0, Lcom/dropbox/core/util/CountingOutputStream;

    invoke-virtual {p1}, Lcom/dropbox/core/http/HttpRequestor$Uploader;->getBody()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dropbox/core/util/CountingOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$SingleUploader;->body:Lcom/dropbox/core/util/CountingOutputStream;

    .line 776
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 3

    .prologue
    .line 788
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxClientV1$SingleUploader;->httpUploader:Lcom/dropbox/core/http/HttpRequestor$Uploader;

    if-nez v1, :cond_0

    .line 789
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "already called \'finish\', \'abort\', or \'close\'"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$SingleUploader;->httpUploader:Lcom/dropbox/core/http/HttpRequestor$Uploader;

    .line 792
    .local v0, "p":Lcom/dropbox/core/http/HttpRequestor$Uploader;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dropbox/core/v1/DbxClientV1$SingleUploader;->httpUploader:Lcom/dropbox/core/http/HttpRequestor$Uploader;

    .line 794
    invoke-virtual {v0}, Lcom/dropbox/core/http/HttpRequestor$Uploader;->abort()V

    .line 795
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$SingleUploader;->httpUploader:Lcom/dropbox/core/http/HttpRequestor$Uploader;

    if-nez v0, :cond_0

    .line 808
    :goto_0
    return-void

    .line 807
    :cond_0
    invoke-virtual {p0}, Lcom/dropbox/core/v1/DbxClientV1$SingleUploader;->abort()V

    goto :goto_0
.end method

.method public finish()Lcom/dropbox/core/v1/DbxEntry$File;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 818
    iget-object v6, p0, Lcom/dropbox/core/v1/DbxClientV1$SingleUploader;->httpUploader:Lcom/dropbox/core/http/HttpRequestor$Uploader;

    if-nez v6, :cond_0

    .line 819
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "already called \'finish\', \'abort\', or \'close\'"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 821
    :cond_0
    iget-object v5, p0, Lcom/dropbox/core/v1/DbxClientV1$SingleUploader;->httpUploader:Lcom/dropbox/core/http/HttpRequestor$Uploader;

    .line 822
    .local v5, "u":Lcom/dropbox/core/http/HttpRequestor$Uploader;
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/dropbox/core/v1/DbxClientV1$SingleUploader;->httpUploader:Lcom/dropbox/core/http/HttpRequestor$Uploader;

    .line 827
    :try_start_0
    iget-object v6, p0, Lcom/dropbox/core/v1/DbxClientV1$SingleUploader;->body:Lcom/dropbox/core/util/CountingOutputStream;

    invoke-virtual {v6}, Lcom/dropbox/core/util/CountingOutputStream;->getBytesWritten()J

    move-result-wide v0

    .line 830
    .local v0, "bytesWritten":J
    iget-wide v6, p0, Lcom/dropbox/core/v1/DbxClientV1$SingleUploader;->claimedBytes:J

    cmp-long v6, v6, v0

    if-eqz v6, :cond_1

    .line 831
    invoke-virtual {v5}, Lcom/dropbox/core/http/HttpRequestor$Uploader;->abort()V

    .line 832
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "You said you were going to upload "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/dropbox/core/v1/DbxClientV1$SingleUploader;->claimedBytes:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes, but you wrote "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes to the Uploader\'s \'body\' stream."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 838
    .end local v0    # "bytesWritten":J
    :catch_0
    move-exception v2

    .line 839
    .local v2, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v6, Lcom/dropbox/core/NetworkIOException;

    invoke-direct {v6, v2}, Lcom/dropbox/core/NetworkIOException;-><init>(Ljava/io/IOException;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 842
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Lcom/dropbox/core/http/HttpRequestor$Uploader;->close()V

    throw v6

    .line 836
    .restart local v0    # "bytesWritten":J
    :cond_1
    :try_start_2
    invoke-virtual {v5}, Lcom/dropbox/core/http/HttpRequestor$Uploader;->finish()Lcom/dropbox/core/http/HttpRequestor$Response;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 842
    .local v4, "response":Lcom/dropbox/core/http/HttpRequestor$Response;
    invoke-virtual {v5}, Lcom/dropbox/core/http/HttpRequestor$Uploader;->close()V

    .line 846
    move-object v3, v4

    .line 848
    .local v3, "nonNullResponse":Lcom/dropbox/core/http/HttpRequestor$Response;
    new-instance v6, Lcom/dropbox/core/v1/DbxClientV1$SingleUploader$1;

    invoke-direct {v6, p0, v0, v1}, Lcom/dropbox/core/v1/DbxClientV1$SingleUploader$1;-><init>(Lcom/dropbox/core/v1/DbxClientV1$SingleUploader;J)V

    invoke-static {v3, v6}, Lcom/dropbox/core/DbxRequestUtil;->finishResponse(Lcom/dropbox/core/http/HttpRequestor$Response;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dropbox/core/v1/DbxEntry$File;

    return-object v6
.end method

.method public getBody()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$SingleUploader;->body:Lcom/dropbox/core/util/CountingOutputStream;

    return-object v0
.end method
