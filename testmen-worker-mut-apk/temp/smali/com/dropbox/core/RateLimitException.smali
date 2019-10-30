.class public Lcom/dropbox/core/RateLimitException;
.super Lcom/dropbox/core/RetryException;
.source "RateLimitException.java"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "backoff"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 13
    invoke-direct/range {p0 .. p5}, Lcom/dropbox/core/RetryException;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    .line 14
    return-void
.end method
