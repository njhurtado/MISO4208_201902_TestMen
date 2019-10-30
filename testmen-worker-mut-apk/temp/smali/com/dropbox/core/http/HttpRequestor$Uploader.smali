.class public abstract Lcom/dropbox/core/http/HttpRequestor$Uploader;
.super Ljava/lang/Object;
.source "HttpRequestor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/http/HttpRequestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Uploader"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract abort()V
.end method

.method public abstract close()V
.end method

.method public abstract finish()Lcom/dropbox/core/http/HttpRequestor$Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getBody()Ljava/io/OutputStream;
.end method

.method public upload(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v1}, Lcom/dropbox/core/http/HttpRequestor$Uploader;->upload(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lcom/dropbox/core/util/IOUtil$ReadException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/dropbox/core/util/IOUtil$WriteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "ex":Lcom/dropbox/core/util/IOUtil$ReadException;
    invoke-virtual {v0}, Lcom/dropbox/core/util/IOUtil$ReadException;->getCause()Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 86
    .end local v0    # "ex":Lcom/dropbox/core/util/IOUtil$ReadException;
    :catch_1
    move-exception v0

    .line 87
    .local v0, "ex":Lcom/dropbox/core/util/IOUtil$WriteException;
    invoke-virtual {v0}, Lcom/dropbox/core/util/IOUtil$WriteException;->getCause()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public upload(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/dropbox/core/http/HttpRequestor$Uploader;->getBody()Ljava/io/OutputStream;

    move-result-object v0

    .line 98
    .local v0, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-static {p1, v0}, Lcom/dropbox/core/util/IOUtil;->copyStreamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 102
    return-void

    .line 100
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw v1
.end method

.method public upload(Ljava/io/InputStream;J)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "limit"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {p1, p2, p3}, Lcom/dropbox/core/util/IOUtil;->limit(Ljava/io/InputStream;J)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/core/http/HttpRequestor$Uploader;->upload(Ljava/io/InputStream;)V

    .line 93
    return-void
.end method

.method public upload([B)V
    .locals 2
    .param p1, "body"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/dropbox/core/http/HttpRequestor$Uploader;->getBody()Ljava/io/OutputStream;

    move-result-object v0

    .line 107
    .local v0, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 111
    return-void

    .line 109
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw v1
.end method
