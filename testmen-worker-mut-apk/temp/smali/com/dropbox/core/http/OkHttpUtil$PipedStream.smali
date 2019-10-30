.class public final Lcom/dropbox/core/http/OkHttpUtil$PipedStream;
.super Ljava/lang/Object;
.source "OkHttpUtil.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/http/OkHttpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PipedStream"
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x500000


# instance fields
.field private final in:Ljava/io/PipedInputStream;

.field private final out:Ljava/io/PipedOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v1, Ljava/io/PipedInputStream;

    const/high16 v2, 0x500000

    invoke-direct {v1, v2}, Ljava/io/PipedInputStream;-><init>(I)V

    iput-object v1, p0, Lcom/dropbox/core/http/OkHttpUtil$PipedStream;->in:Ljava/io/PipedInputStream;

    .line 54
    :try_start_0
    new-instance v1, Ljava/io/PipedOutputStream;

    iget-object v2, p0, Lcom/dropbox/core/http/OkHttpUtil$PipedStream;->in:Ljava/io/PipedInputStream;

    invoke-direct {v1, v2}, Ljava/io/PipedOutputStream;-><init>(Ljava/io/PipedInputStream;)V

    iput-object v1, p0, Lcom/dropbox/core/http/OkHttpUtil$PipedStream;->out:Ljava/io/PipedOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to create piped stream for async upload request."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpUtil$PipedStream;->out:Ljava/io/PipedOutputStream;

    invoke-virtual {v0}, Ljava/io/PipedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 72
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpUtil$PipedStream;->in:Ljava/io/PipedInputStream;

    invoke-virtual {v0}, Ljava/io/PipedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    :goto_1
    return-void

    .line 73
    :catch_0
    move-exception v0

    goto :goto_1

    .line 68
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpUtil$PipedStream;->out:Ljava/io/PipedOutputStream;

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 1
    .param p1, "sink"    # Lokio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpUtil$PipedStream;->in:Ljava/io/PipedInputStream;

    invoke-static {v0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v0

    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J

    .line 80
    return-void
.end method
