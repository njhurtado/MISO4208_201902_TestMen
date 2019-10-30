.class public Lcom/dropbox/core/BadRequestException;
.super Lcom/dropbox/core/ProtocolException;
.source "BadRequestException.java"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/dropbox/core/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void
.end method
