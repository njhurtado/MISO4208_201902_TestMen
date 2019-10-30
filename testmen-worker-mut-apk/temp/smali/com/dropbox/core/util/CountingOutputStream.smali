.class public Lcom/dropbox/core/util/CountingOutputStream;
.super Ljava/io/OutputStream;
.source "CountingOutputStream.java"


# instance fields
.field private bytesWritten:J

.field private final out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 9
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dropbox/core/util/CountingOutputStream;->bytesWritten:J

    .line 13
    iput-object p1, p0, Lcom/dropbox/core/util/CountingOutputStream;->out:Ljava/io/OutputStream;

    .line 14
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You aren\'t allowed to call close() on this object."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dropbox/core/util/CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 46
    return-void
.end method

.method public getBytesWritten()J
    .locals 2

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/dropbox/core/util/CountingOutputStream;->bytesWritten:J

    return-wide v0
.end method

.method public write(I)V
    .locals 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/dropbox/core/util/CountingOutputStream;->bytesWritten:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dropbox/core/util/CountingOutputStream;->bytesWritten:J

    .line 25
    iget-object v0, p0, Lcom/dropbox/core/util/CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 26
    return-void
.end method

.method public write([B)V
    .locals 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/dropbox/core/util/CountingOutputStream;->bytesWritten:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dropbox/core/util/CountingOutputStream;->bytesWritten:J

    .line 32
    iget-object v0, p0, Lcom/dropbox/core/util/CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 33
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/dropbox/core/util/CountingOutputStream;->bytesWritten:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dropbox/core/util/CountingOutputStream;->bytesWritten:J

    .line 39
    iget-object v0, p0, Lcom/dropbox/core/util/CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 40
    return-void
.end method
