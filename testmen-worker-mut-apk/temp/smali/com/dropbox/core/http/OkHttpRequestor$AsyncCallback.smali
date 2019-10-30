.class public final Lcom/dropbox/core/http/OkHttpRequestor$AsyncCallback;
.super Ljava/lang/Object;
.source "OkHttpRequestor.java"

# interfaces
.implements Lcom/squareup/okhttp/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/http/OkHttpRequestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AsyncCallback"
.end annotation


# instance fields
.field private error:Ljava/io/IOException;

.field private response:Lcom/squareup/okhttp/Response;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$AsyncCallback;->error:Ljava/io/IOException;

    .line 286
    iput-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$AsyncCallback;->response:Lcom/squareup/okhttp/Response;

    .line 287
    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/core/http/OkHttpRequestor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dropbox/core/http/OkHttpRequestor$1;

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/dropbox/core/http/OkHttpRequestor$AsyncCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getResponse()Lcom/squareup/okhttp/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/dropbox/core/http/OkHttpRequestor$AsyncCallback;->error:Ljava/io/IOException;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/dropbox/core/http/OkHttpRequestor$AsyncCallback;->response:Lcom/squareup/okhttp/Response;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 292
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 295
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 290
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 298
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/dropbox/core/http/OkHttpRequestor$AsyncCallback;->error:Ljava/io/IOException;

    if-eqz v1, :cond_1

    .line 299
    iget-object v1, p0, Lcom/dropbox/core/http/OkHttpRequestor$AsyncCallback;->error:Ljava/io/IOException;

    throw v1

    .line 301
    :cond_1
    iget-object v1, p0, Lcom/dropbox/core/http/OkHttpRequestor$AsyncCallback;->response:Lcom/squareup/okhttp/Response;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized onFailure(Lcom/squareup/okhttp/Request;Ljava/io/IOException;)V
    .locals 1
    .param p1, "request"    # Lcom/squareup/okhttp/Request;
    .param p2, "ex"    # Ljava/io/IOException;

    .prologue
    .line 306
    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/dropbox/core/http/OkHttpRequestor$AsyncCallback;->error:Ljava/io/IOException;

    .line 307
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    monitor-exit p0

    return-void

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onResponse(Lcom/squareup/okhttp/Response;)V
    .locals 1
    .param p1, "response"    # Lcom/squareup/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/dropbox/core/http/OkHttpRequestor$AsyncCallback;->response:Lcom/squareup/okhttp/Response;

    .line 313
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    monitor-exit p0

    return-void

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
