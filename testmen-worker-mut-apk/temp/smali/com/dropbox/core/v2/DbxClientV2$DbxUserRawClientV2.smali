.class final Lcom/dropbox/core/v2/DbxClientV2$DbxUserRawClientV2;
.super Lcom/dropbox/core/v2/DbxRawClientV2;
.source "DbxClientV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/DbxClientV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DbxUserRawClientV2"
.end annotation


# instance fields
.field private final accessToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Lcom/dropbox/core/DbxHost;)V
    .locals 2
    .param p1, "requestConfig"    # Lcom/dropbox/core/DbxRequestConfig;
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "host"    # Lcom/dropbox/core/DbxHost;

    .prologue
    .line 68
    invoke-direct {p0, p1, p3}, Lcom/dropbox/core/v2/DbxRawClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;)V

    .line 70
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "accessToken"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    iput-object p2, p0, Lcom/dropbox/core/v2/DbxClientV2$DbxUserRawClientV2;->accessToken:Ljava/lang/String;

    .line 73
    return-void
.end method


# virtual methods
.method protected addAuthHeaders(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2$DbxUserRawClientV2;->accessToken:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/dropbox/core/DbxRequestUtil;->addAuthHeader(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    .line 78
    return-void
.end method
