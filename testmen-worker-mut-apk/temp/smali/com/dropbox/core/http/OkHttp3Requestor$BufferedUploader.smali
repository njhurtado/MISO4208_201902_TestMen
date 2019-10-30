.class Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;
.super Lcom/dropbox/core/http/HttpRequestor$Uploader;
.source "OkHttp3Requestor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/http/OkHttp3Requestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BufferedUploader"
.end annotation


# instance fields
.field private body:Lokhttp3/RequestBody;

.field private call:Lokhttp3/Call;

.field private callback:Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;

.field private cancelled:Z

.field private closed:Z

.field private final method:Ljava/lang/String;

.field private final request:Lokhttp3/Request$Builder;

.field final synthetic this$0:Lcom/dropbox/core/http/OkHttp3Requestor;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/http/OkHttp3Requestor;Ljava/lang/String;Lokhttp3/Request$Builder;)V
    .locals 2
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "request"    # Lokhttp3/Request$Builder;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 189
    iput-object p1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->this$0:Lcom/dropbox/core/http/OkHttp3Requestor;

    invoke-direct {p0}, Lcom/dropbox/core/http/HttpRequestor$Uploader;-><init>()V

    .line 190
    iput-object p2, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->method:Ljava/lang/String;

    .line 191
    iput-object p3, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->request:Lokhttp3/Request$Builder;

    .line 193
    iput-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->body:Lokhttp3/RequestBody;

    .line 194
    iput-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->call:Lokhttp3/Call;

    .line 195
    iput-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->callback:Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;

    .line 197
    iput-boolean v1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->closed:Z

    .line 198
    iput-boolean v1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->cancelled:Z

    .line 199
    return-void
.end method

.method private assertNoBody()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->body:Lokhttp3/RequestBody;

    if-eqz v0, :cond_0

    .line 203
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Request body already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    return-void
.end method

.method private setBody(Lokhttp3/RequestBody;)V
    .locals 2
    .param p1, "body"    # Lokhttp3/RequestBody;

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->assertNoBody()V

    .line 227
    iput-object p1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->body:Lokhttp3/RequestBody;

    .line 228
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->request:Lokhttp3/Request$Builder;

    iget-object v1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->method:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 229
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->this$0:Lcom/dropbox/core/http/OkHttp3Requestor;

    iget-object v1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->request:Lokhttp3/Request$Builder;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/http/OkHttp3Requestor;->configureRequest(Lokhttp3/Request$Builder;)V

    .line 230
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->call:Lokhttp3/Call;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->call:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 259
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->cancelled:Z

    .line 260
    invoke-virtual {p0}, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->close()V

    .line 261
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->body:Lokhttp3/RequestBody;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->body:Lokhttp3/RequestBody;

    instance-of v0, v0, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->body:Lokhttp3/RequestBody;

    check-cast v0, Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->closed:Z

    .line 252
    return-void

    .line 247
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public finish()Lcom/dropbox/core/http/HttpRequestor$Response;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    iget-boolean v2, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->cancelled:Z

    if-eqz v2, :cond_0

    .line 266
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Already aborted"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 268
    :cond_0
    iget-object v2, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->body:Lokhttp3/RequestBody;

    if-nez v2, :cond_1

    .line 269
    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-virtual {p0, v2}, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->upload([B)V

    .line 272
    :cond_1
    iget-object v2, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->callback:Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;

    if-eqz v2, :cond_2

    .line 275
    :try_start_0
    invoke-virtual {p0}, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->getBody()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :goto_0
    iget-object v2, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->callback:Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;

    invoke-virtual {v2}, Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;->getResponse()Lokhttp3/Response;

    move-result-object v0

    .line 284
    .local v0, "response":Lokhttp3/Response;
    :goto_1
    iget-object v2, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->this$0:Lcom/dropbox/core/http/OkHttp3Requestor;

    invoke-virtual {v2, v0}, Lcom/dropbox/core/http/OkHttp3Requestor;->interceptResponse(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v2

    invoke-static {v2}, Lcom/dropbox/core/http/OkHttp3Requestor;->access$200(Lokhttp3/Headers;)Ljava/util/Map;

    move-result-object v1

    .line 286
    .local v1, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v2, Lcom/dropbox/core/http/HttpRequestor$Response;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v3

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lcom/dropbox/core/http/HttpRequestor$Response;-><init>(ILjava/io/InputStream;Ljava/util/Map;)V

    return-object v2

    .line 281
    .end local v0    # "response":Lokhttp3/Response;
    .end local v1    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->this$0:Lcom/dropbox/core/http/OkHttp3Requestor;

    invoke-static {v2}, Lcom/dropbox/core/http/OkHttp3Requestor;->access$100(Lcom/dropbox/core/http/OkHttp3Requestor;)Lokhttp3/OkHttpClient;

    move-result-object v2

    iget-object v3, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->request:Lokhttp3/Request$Builder;

    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    iput-object v2, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->call:Lokhttp3/Call;

    .line 282
    iget-object v2, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->call:Lokhttp3/Call;

    invoke-interface {v2}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    .restart local v0    # "response":Lokhttp3/Response;
    goto :goto_1

    .line 276
    .end local v0    # "response":Lokhttp3/Response;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getBody()Ljava/io/OutputStream;
    .locals 3

    .prologue
    .line 211
    iget-object v1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->body:Lokhttp3/RequestBody;

    instance-of v1, v1, Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->body:Lokhttp3/RequestBody;

    check-cast v1, Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;

    invoke-virtual {v1}, Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 221
    :goto_0
    return-object v1

    .line 214
    :cond_0
    new-instance v0, Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;

    invoke-direct {v0}, Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;-><init>()V

    .line 215
    .local v0, "pipedBody":Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;
    invoke-direct {p0, v0}, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->setBody(Lokhttp3/RequestBody;)V

    .line 217
    new-instance v1, Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;-><init>(Lcom/dropbox/core/http/OkHttp3Requestor$1;)V

    iput-object v1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->callback:Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;

    .line 218
    iget-object v1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->this$0:Lcom/dropbox/core/http/OkHttp3Requestor;

    invoke-static {v1}, Lcom/dropbox/core/http/OkHttp3Requestor;->access$100(Lcom/dropbox/core/http/OkHttp3Requestor;)Lokhttp3/OkHttpClient;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->request:Lokhttp3/Request$Builder;

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->call:Lokhttp3/Call;

    .line 220
    iget-object v1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->call:Lokhttp3/Call;

    iget-object v2, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->callback:Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;

    invoke-interface {v1, v2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 221
    invoke-virtual {v0}, Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    goto :goto_0
.end method

.method public upload(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 234
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->setBody(Lokhttp3/RequestBody;)V

    .line 235
    return-void
.end method

.method public upload([B)V
    .locals 1
    .param p1, "body"    # [B

    .prologue
    .line 239
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->setBody(Lokhttp3/RequestBody;)V

    .line 240
    return-void
.end method
