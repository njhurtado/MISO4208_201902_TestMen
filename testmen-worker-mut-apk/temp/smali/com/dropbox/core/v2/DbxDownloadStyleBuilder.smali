.class public abstract Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;
.super Ljava/lang/Object;
.source "DbxDownloadStyleBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private length:Ljava/lang/Long;

.field private start:Ljava/lang/Long;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;, "Lcom/dropbox/core/v2/DbxDownloadStyleBuilder<TR;>;"
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v0, p0, Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;->start:Ljava/lang/Long;

    .line 65
    iput-object v0, p0, Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;->length:Ljava/lang/Long;

    .line 66
    return-void
.end method


# virtual methods
.method public download(Ljava/io/OutputStream;)Ljava/lang/Object;
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "this":Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;, "Lcom/dropbox/core/v2/DbxDownloadStyleBuilder<TR;>;"
    invoke-virtual {p0}, Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;->start()Lcom/dropbox/core/DbxDownloader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/DbxDownloader;->download(Ljava/io/OutputStream;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getHeaders()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;, "Lcom/dropbox/core/v2/DbxDownloadStyleBuilder<TR;>;"
    iget-object v2, p0, Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;->start:Ljava/lang/Long;

    if-nez v2, :cond_0

    .line 70
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    .line 73
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v0, "headers":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    const-string v2, "bytes=%d-"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;->start:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "rangeValue":Ljava/lang/String;
    iget-object v2, p0, Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;->length:Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;->start:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v3, p0, Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;->length:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    :cond_1
    new-instance v2, Lcom/dropbox/core/http/HttpRequestor$Header;

    const-string v3, "Range"

    invoke-direct {v2, v3, v1}, Lcom/dropbox/core/http/HttpRequestor$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public range(J)Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;
    .locals 3
    .param p1, "start"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/dropbox/core/v2/DbxDownloadStyleBuilder",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;, "Lcom/dropbox/core/v2/DbxDownloadStyleBuilder<TR;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;->start:Ljava/lang/Long;

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;->length:Ljava/lang/Long;

    .line 147
    return-object p0
.end method

.method public range(JJ)Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;
    .locals 3
    .param p1, "start"    # J
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lcom/dropbox/core/v2/DbxDownloadStyleBuilder",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;, "Lcom/dropbox/core/v2/DbxDownloadStyleBuilder<TR;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    const-wide/16 v0, 0x1

    cmp-long v0, p3, v0

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;->start:Ljava/lang/Long;

    .line 121
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;->length:Ljava/lang/Long;

    .line 123
    return-object p0
.end method

.method public abstract start()Lcom/dropbox/core/DbxDownloader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dropbox/core/DbxDownloader",
            "<TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation
.end method
