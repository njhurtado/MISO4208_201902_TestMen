.class public Lcom/dropbox/core/DbxException;
.super Ljava/lang/Exception;
.source "DbxException.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final requestId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/dropbox/core/DbxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/dropbox/core/DbxException;->requestId:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 29
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    iput-object p1, p0, Lcom/dropbox/core/DbxException;->requestId:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/dropbox/core/DbxException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    return-void
.end method


# virtual methods
.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dropbox/core/DbxException;->requestId:Ljava/lang/String;

    return-object v0
.end method
