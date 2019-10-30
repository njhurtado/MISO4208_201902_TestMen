.class Lcom/dropbox/core/http/GoogleAppEngineRequestor$FetchServiceUploader;
.super Lcom/dropbox/core/http/HttpRequestor$Uploader;
.source "GoogleAppEngineRequestor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/http/GoogleAppEngineRequestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FetchServiceUploader"
.end annotation


# instance fields
.field private final body:Ljava/io/ByteArrayOutputStream;

.field private request:Lcom/google/appengine/api/urlfetch/HTTPRequest;

.field private final service:Lcom/google/appengine/api/urlfetch/URLFetchService;


# direct methods
.method public constructor <init>(Lcom/google/appengine/api/urlfetch/URLFetchService;Lcom/google/appengine/api/urlfetch/HTTPRequest;Ljava/io/ByteArrayOutputStream;)V
    .locals 0
    .param p1, "service"    # Lcom/google/appengine/api/urlfetch/URLFetchService;
    .param p2, "request"    # Lcom/google/appengine/api/urlfetch/HTTPRequest;
    .param p3, "body"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/dropbox/core/http/HttpRequestor$Uploader;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor$FetchServiceUploader;->service:Lcom/google/appengine/api/urlfetch/URLFetchService;

    .line 135
    iput-object p2, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor$FetchServiceUploader;->request:Lcom/google/appengine/api/urlfetch/HTTPRequest;

    .line 136
    iput-object p3, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor$FetchServiceUploader;->body:Ljava/io/ByteArrayOutputStream;

    .line 137
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor$FetchServiceUploader;->request:Lcom/google/appengine/api/urlfetch/HTTPRequest;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uploader already closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/dropbox/core/http/GoogleAppEngineRequestor$FetchServiceUploader;->close()V

    .line 165
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor$FetchServiceUploader;->request:Lcom/google/appengine/api/urlfetch/HTTPRequest;

    if-eqz v0, :cond_0

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor$FetchServiceUploader;->body:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor$FetchServiceUploader;->request:Lcom/google/appengine/api/urlfetch/HTTPRequest;

    .line 154
    :cond_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public finish()Lcom/dropbox/core/http/HttpRequestor$Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v2, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor$FetchServiceUploader;->request:Lcom/google/appengine/api/urlfetch/HTTPRequest;

    if-nez v2, :cond_0

    .line 170
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Uploader already closed."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 172
    :cond_0
    iget-object v2, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor$FetchServiceUploader;->request:Lcom/google/appengine/api/urlfetch/HTTPRequest;

    iget-object v3, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor$FetchServiceUploader;->body:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/appengine/api/urlfetch/HTTPRequest;->setPayload([B)V

    .line 173
    iget-object v2, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor$FetchServiceUploader;->service:Lcom/google/appengine/api/urlfetch/URLFetchService;

    iget-object v3, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor$FetchServiceUploader;->request:Lcom/google/appengine/api/urlfetch/HTTPRequest;

    invoke-interface {v2, v3}, Lcom/google/appengine/api/urlfetch/URLFetchService;->fetch(Lcom/google/appengine/api/urlfetch/HTTPRequest;)Lcom/google/appengine/api/urlfetch/HTTPResponse;

    move-result-object v1

    .line 174
    .local v1, "response":Lcom/google/appengine/api/urlfetch/HTTPResponse;
    invoke-static {v1}, Lcom/dropbox/core/http/GoogleAppEngineRequestor;->access$000(Lcom/google/appengine/api/urlfetch/HTTPResponse;)Lcom/dropbox/core/http/HttpRequestor$Response;

    move-result-object v0

    .line 175
    .local v0, "requestorResponse":Lcom/dropbox/core/http/HttpRequestor$Response;
    invoke-virtual {p0}, Lcom/dropbox/core/http/GoogleAppEngineRequestor$FetchServiceUploader;->close()V

    .line 176
    return-object v0
.end method

.method public getBody()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor$FetchServiceUploader;->body:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method
