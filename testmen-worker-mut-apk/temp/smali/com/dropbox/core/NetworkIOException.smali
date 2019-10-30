.class public Lcom/dropbox/core/NetworkIOException;
.super Lcom/dropbox/core/DbxException;
.source "NetworkIOException.java"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 1
    .param p1, "cause"    # Ljava/io/IOException;

    .prologue
    .line 17
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/dropbox/core/DbxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    return-void
.end method


# virtual methods
.method public getCause()Ljava/io/IOException;
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/dropbox/core/DbxException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    return-object v0
.end method

.method public bridge synthetic getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/dropbox/core/NetworkIOException;->getCause()Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method
