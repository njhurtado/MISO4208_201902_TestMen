.class public Lcom/dropbox/core/v1/DbxThumbnailFormat;
.super Ljava/lang/Object;
.source "DbxThumbnailFormat.java"


# static fields
.field public static final JPEG:Lcom/dropbox/core/v1/DbxThumbnailFormat;

.field public static final PNG:Lcom/dropbox/core/v1/DbxThumbnailFormat;


# instance fields
.field public final ident:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/dropbox/core/v1/DbxThumbnailFormat;

    const-string v1, "jpeg"

    invoke-direct {v0, v1}, Lcom/dropbox/core/v1/DbxThumbnailFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/dropbox/core/v1/DbxThumbnailFormat;->JPEG:Lcom/dropbox/core/v1/DbxThumbnailFormat;

    .line 24
    new-instance v0, Lcom/dropbox/core/v1/DbxThumbnailFormat;

    const-string v1, "png"

    invoke-direct {v0, v1}, Lcom/dropbox/core/v1/DbxThumbnailFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/dropbox/core/v1/DbxThumbnailFormat;->PNG:Lcom/dropbox/core/v1/DbxThumbnailFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "ident"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxThumbnailFormat;->ident:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static bestForFileName(Ljava/lang/String;Lcom/dropbox/core/v1/DbxThumbnailFormat;)Lcom/dropbox/core/v1/DbxThumbnailFormat;
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "fallback"    # Lcom/dropbox/core/v1/DbxThumbnailFormat;

    .prologue
    .line 39
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 40
    const-string v0, ".png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".gif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    :cond_0
    sget-object p1, Lcom/dropbox/core/v1/DbxThumbnailFormat;->PNG:Lcom/dropbox/core/v1/DbxThumbnailFormat;

    .line 46
    .end local p1    # "fallback":Lcom/dropbox/core/v1/DbxThumbnailFormat;
    :cond_1
    :goto_0
    return-object p1

    .line 43
    .restart local p1    # "fallback":Lcom/dropbox/core/v1/DbxThumbnailFormat;
    :cond_2
    const-string v0, ".jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ".jpg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ".jpe"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    :cond_3
    sget-object p1, Lcom/dropbox/core/v1/DbxThumbnailFormat;->JPEG:Lcom/dropbox/core/v1/DbxThumbnailFormat;

    goto :goto_0
.end method
