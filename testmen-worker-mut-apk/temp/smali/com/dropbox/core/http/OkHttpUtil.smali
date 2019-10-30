.class final Lcom/dropbox/core/http/OkHttpUtil;
.super Ljava/lang/Object;
.source "OkHttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/http/OkHttpUtil$PipedStream;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertNotSameThreadExecutor(Ljava/util/concurrent/ExecutorService;)V
    .locals 7
    .param p0, "executor"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 19
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 23
    .local v0, "current":Ljava/lang/Thread;
    :try_start_0
    new-instance v3, Lcom/dropbox/core/http/OkHttpUtil$1;

    invoke-direct {v3}, Lcom/dropbox/core/http/OkHttpUtil$1;-><init>()V

    invoke-interface {p0, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    const-wide/16 v4, 0x2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 28
    invoke-interface {v3, v4, v5, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 37
    .local v2, "executed":Ljava/lang/Thread;
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "OkHttp dispatcher uses same-thread executor. This is not supported by the SDK and may result in dead-locks. Please configure your Dispatcher to use an ExecutorService that runs tasks on separate threads."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 29
    .end local v2    # "executed":Ljava/lang/Thread;
    :catch_0
    move-exception v1

    .line 31
    .local v1, "ex":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 32
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unable to verify OkHttp dispatcher executor."

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 33
    .end local v1    # "ex":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 34
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unable to verify OkHttp dispatcher executor."

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 43
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v2    # "executed":Ljava/lang/Thread;
    :cond_0
    return-void
.end method
