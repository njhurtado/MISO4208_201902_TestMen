.class public abstract Lcom/dropbox/core/v2/DbxUploadStyleBuilder;
.super Ljava/lang/Object;
.source "DbxUploadStyleBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        "X:",
        "Lcom/dropbox/core/DbxApiException;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    .local p0, "this":Lcom/dropbox/core/v2/DbxUploadStyleBuilder;, "Lcom/dropbox/core/v2/DbxUploadStyleBuilder<TR;TE;TX;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract start()Lcom/dropbox/core/DbxUploader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dropbox/core/DbxUploader",
            "<TR;TE;TX;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation
.end method

.method public uploadAndFinish(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TR;^TX;^",
            "Lcom/dropbox/core/DbxException;",
            "^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lcom/dropbox/core/v2/DbxUploadStyleBuilder;, "Lcom/dropbox/core/v2/DbxUploadStyleBuilder<TR;TE;TX;>;"
    invoke-virtual {p0}, Lcom/dropbox/core/v2/DbxUploadStyleBuilder;->start()Lcom/dropbox/core/DbxUploader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/DbxUploader;->uploadAndFinish(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public uploadAndFinish(Ljava/io/InputStream;J)Ljava/lang/Object;
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "J)TR;^TX;^",
            "Lcom/dropbox/core/DbxException;",
            "^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lcom/dropbox/core/v2/DbxUploadStyleBuilder;, "Lcom/dropbox/core/v2/DbxUploadStyleBuilder<TR;TE;TX;>;"
    invoke-virtual {p0}, Lcom/dropbox/core/v2/DbxUploadStyleBuilder;->start()Lcom/dropbox/core/DbxUploader;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/dropbox/core/DbxUploader;->uploadAndFinish(Ljava/io/InputStream;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
