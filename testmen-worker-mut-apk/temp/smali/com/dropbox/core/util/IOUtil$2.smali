.class final Lcom/dropbox/core/util/IOUtil$2;
.super Ljava/io/OutputStream;
.source "IOUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/util/IOUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 0
    .param p1, "b"    # I

    .prologue
    .line 215
    return-void
.end method

.method public write([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 216
    return-void
.end method

.method public write([BII)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 217
    return-void
.end method
