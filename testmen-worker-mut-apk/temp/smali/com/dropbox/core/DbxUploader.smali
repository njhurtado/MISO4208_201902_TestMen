.class public abstract Lcom/dropbox/core/DbxUploader;
.super Ljava/lang/Object;
.source "DbxUploader.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        "X:",
        "Lcom/dropbox/core/DbxApiException;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field private closed:Z

.field private final errorSerializer:Lcom/dropbox/core/stone/StoneSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<TE;>;"
        }
    .end annotation
.end field

.field private finished:Z

.field private final httpUploader:Lcom/dropbox/core/http/HttpRequestor$Uploader;

.field private final responseSerializer:Lcom/dropbox/core/stone/StoneSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/dropbox/core/http/HttpRequestor$Uploader;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)V
    .locals 1
    .param p1, "httpUploader"    # Lcom/dropbox/core/http/HttpRequestor$Uploader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/http/HttpRequestor$Uploader;",
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<TR;>;",
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/dropbox/core/DbxUploader;, "Lcom/dropbox/core/DbxUploader<TR;TE;TX;>;"
    .local p2, "responseSerializer":Lcom/dropbox/core/stone/StoneSerializer;, "Lcom/dropbox/core/stone/StoneSerializer<TR;>;"
    .local p3, "errorSerializer":Lcom/dropbox/core/stone/StoneSerializer;, "Lcom/dropbox/core/stone/StoneSerializer<TE;>;"
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/dropbox/core/DbxUploader;->httpUploader:Lcom/dropbox/core/http/HttpRequestor$Uploader;

    .line 55
    iput-object p2, p0, Lcom/dropbox/core/DbxUploader;->responseSerializer:Lcom/dropbox/core/stone/StoneSerializer;

    .line 56
    iput-object p3, p0, Lcom/dropbox/core/DbxUploader;->errorSerializer:Lcom/dropbox/core/stone/StoneSerializer;

    .line 58
    iput-boolean v0, p0, Lcom/dropbox/core/DbxUploader;->closed:Z

    .line 59
    iput-boolean v0, p0, Lcom/dropbox/core/DbxUploader;->finished:Z

    .line 60
    return-void
.end method

.method private assertOpenAndUnfinished()V
    .locals 2

    .prologue
    .line 243
    .local p0, "this":Lcom/dropbox/core/DbxUploader;, "Lcom/dropbox/core/DbxUploader<TR;TE;TX;>;"
    iget-boolean v0, p0, Lcom/dropbox/core/DbxUploader;->closed:Z

    if-eqz v0, :cond_0

    .line 244
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This uploader is already closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_0
    iget-boolean v0, p0, Lcom/dropbox/core/DbxUploader;->finished:Z

    if-eqz v0, :cond_1

    .line 247
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This uploader is already finished and cannot be used to upload more data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_1
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 174
    .local p0, "this":Lcom/dropbox/core/DbxUploader;, "Lcom/dropbox/core/DbxUploader<TR;TE;TX;>;"
    iget-object v0, p0, Lcom/dropbox/core/DbxUploader;->httpUploader:Lcom/dropbox/core/http/HttpRequestor$Uploader;

    invoke-virtual {v0}, Lcom/dropbox/core/http/HttpRequestor$Uploader;->abort()V

    .line 175
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 164
    .local p0, "this":Lcom/dropbox/core/DbxUploader;, "Lcom/dropbox/core/DbxUploader<TR;TE;TX;>;"
    iget-boolean v0, p0, Lcom/dropbox/core/DbxUploader;->closed:Z

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/dropbox/core/DbxUploader;->httpUploader:Lcom/dropbox/core/http/HttpRequestor$Uploader;

    invoke-virtual {v0}, Lcom/dropbox/core/http/HttpRequestor$Uploader;->close()V

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/core/DbxUploader;->closed:Z

    .line 168
    :cond_0
    return-void
.end method

.method public finish()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;^TX;^",
            "Lcom/dropbox/core/DbxException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/dropbox/core/DbxUploader;, "Lcom/dropbox/core/DbxUploader<TR;TE;TX;>;"
    const/4 v7, 0x1

    .line 210
    invoke-direct {p0}, Lcom/dropbox/core/DbxUploader;->assertOpenAndUnfinished()V

    .line 212
    const/4 v2, 0x0

    .line 214
    .local v2, "response":Lcom/dropbox/core/http/HttpRequestor$Response;
    :try_start_0
    iget-object v4, p0, Lcom/dropbox/core/DbxUploader;->httpUploader:Lcom/dropbox/core/http/HttpRequestor$Uploader;

    invoke-virtual {v4}, Lcom/dropbox/core/http/HttpRequestor$Uploader;->finish()Lcom/dropbox/core/http/HttpRequestor$Response;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 217
    :try_start_1
    invoke-virtual {v2}, Lcom/dropbox/core/http/HttpRequestor$Response;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_1

    .line 218
    iget-object v4, p0, Lcom/dropbox/core/DbxUploader;->responseSerializer:Lcom/dropbox/core/stone/StoneSerializer;

    invoke-virtual {v2}, Lcom/dropbox/core/http/HttpRequestor$Response;->getBody()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Ljava/io/InputStream;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 235
    if-eqz v2, :cond_0

    .line 236
    invoke-virtual {v2}, Lcom/dropbox/core/http/HttpRequestor$Response;->getBody()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Lcom/dropbox/core/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 238
    :cond_0
    iput-boolean v7, p0, Lcom/dropbox/core/DbxUploader;->finished:Z

    return-object v4

    .line 220
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Lcom/dropbox/core/http/HttpRequestor$Response;->getStatusCode()I

    move-result v4

    const/16 v5, 0x199

    if-ne v4, v5, :cond_3

    .line 221
    iget-object v4, p0, Lcom/dropbox/core/DbxUploader;->errorSerializer:Lcom/dropbox/core/stone/StoneSerializer;

    invoke-static {v4, v2}, Lcom/dropbox/core/DbxWrappedException;->fromResponse(Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/DbxWrappedException;

    move-result-object v3

    .line 222
    .local v3, "wrapped":Lcom/dropbox/core/DbxWrappedException;
    invoke-virtual {p0, v3}, Lcom/dropbox/core/DbxUploader;->newException(Lcom/dropbox/core/DbxWrappedException;)Lcom/dropbox/core/DbxApiException;

    move-result-object v4

    throw v4
    :try_end_2
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 227
    .end local v3    # "wrapped":Lcom/dropbox/core/DbxWrappedException;
    :catch_0
    move-exception v0

    .line 228
    .local v0, "ex":Lcom/fasterxml/jackson/core/JsonProcessingException;
    :try_start_3
    invoke-static {v2}, Lcom/dropbox/core/DbxRequestUtil;->getRequestId(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "requestId":Ljava/lang/String;
    new-instance v4, Lcom/dropbox/core/BadResponseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad JSON in response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5, v0}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 231
    .end local v0    # "ex":Lcom/fasterxml/jackson/core/JsonProcessingException;
    .end local v1    # "requestId":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 232
    .local v0, "ex":Ljava/io/IOException;
    :try_start_4
    new-instance v4, Lcom/dropbox/core/NetworkIOException;

    invoke-direct {v4, v0}, Lcom/dropbox/core/NetworkIOException;-><init>(Ljava/io/IOException;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 235
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_2

    .line 236
    invoke-virtual {v2}, Lcom/dropbox/core/http/HttpRequestor$Response;->getBody()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Lcom/dropbox/core/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 238
    :cond_2
    iput-boolean v7, p0, Lcom/dropbox/core/DbxUploader;->finished:Z

    throw v4

    .line 225
    :cond_3
    :try_start_5
    invoke-static {v2}, Lcom/dropbox/core/DbxRequestUtil;->unexpectedStatus(Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/DbxException;

    move-result-object v4

    throw v4
    :try_end_5
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 193
    .local p0, "this":Lcom/dropbox/core/DbxUploader;, "Lcom/dropbox/core/DbxUploader<TR;TE;TX;>;"
    invoke-direct {p0}, Lcom/dropbox/core/DbxUploader;->assertOpenAndUnfinished()V

    .line 194
    iget-object v0, p0, Lcom/dropbox/core/DbxUploader;->httpUploader:Lcom/dropbox/core/http/HttpRequestor$Uploader;

    invoke-virtual {v0}, Lcom/dropbox/core/http/HttpRequestor$Uploader;->getBody()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method protected abstract newException(Lcom/dropbox/core/DbxWrappedException;)Lcom/dropbox/core/DbxApiException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/DbxWrappedException;",
            ")TX;"
        }
    .end annotation
.end method

.method public uploadAndFinish(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TR;^TX;^",
            "Lcom/dropbox/core/DbxException;",
            "^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lcom/dropbox/core/DbxUploader;, "Lcom/dropbox/core/DbxUploader<TR;TE;TX;>;"
    :try_start_0
    iget-object v1, p0, Lcom/dropbox/core/DbxUploader;->httpUploader:Lcom/dropbox/core/http/HttpRequestor$Uploader;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/http/HttpRequestor$Uploader;->upload(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lcom/dropbox/core/util/IOUtil$ReadException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :try_start_1
    invoke-virtual {p0}, Lcom/dropbox/core/DbxUploader;->finish()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 105
    invoke-virtual {p0}, Lcom/dropbox/core/DbxUploader;->close()V

    return-object v1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "ex":Lcom/dropbox/core/util/IOUtil$ReadException;
    :try_start_2
    invoke-virtual {v0}, Lcom/dropbox/core/util/IOUtil$ReadException;->getCause()Ljava/io/IOException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    .end local v0    # "ex":Lcom/dropbox/core/util/IOUtil$ReadException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/dropbox/core/DbxUploader;->close()V

    throw v1

    .line 98
    :catch_1
    move-exception v0

    .line 100
    .local v0, "ex":Ljava/io/IOException;
    :try_start_3
    new-instance v1, Lcom/dropbox/core/NetworkIOException;

    invoke-direct {v1, v0}, Lcom/dropbox/core/NetworkIOException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public uploadAndFinish(Ljava/io/InputStream;J)Ljava/lang/Object;
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "J)TR;^TX;^",
            "Lcom/dropbox/core/DbxException;",
            "^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "this":Lcom/dropbox/core/DbxUploader;, "Lcom/dropbox/core/DbxUploader<TR;TE;TX;>;"
    invoke-static {p1, p2, p3}, Lcom/dropbox/core/util/IOUtil;->limit(Ljava/io/InputStream;J)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/core/DbxUploader;->uploadAndFinish(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
