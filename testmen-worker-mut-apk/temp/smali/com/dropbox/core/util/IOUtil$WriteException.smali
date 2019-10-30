.class public final Lcom/dropbox/core/util/IOUtil$WriteException;
.super Lcom/dropbox/core/util/IOUtil$WrappedException;
.source "IOUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/util/IOUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WriteException"
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 0
    .param p1, "underlying"    # Ljava/io/IOException;

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/dropbox/core/util/IOUtil$WrappedException;-><init>(Ljava/io/IOException;)V

    .line 205
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "underlying"    # Ljava/io/IOException;

    .prologue
    .line 200
    invoke-direct {p0, p1, p2}, Lcom/dropbox/core/util/IOUtil$WrappedException;-><init>(Ljava/lang/String;Ljava/io/IOException;)V

    .line 201
    return-void
.end method
