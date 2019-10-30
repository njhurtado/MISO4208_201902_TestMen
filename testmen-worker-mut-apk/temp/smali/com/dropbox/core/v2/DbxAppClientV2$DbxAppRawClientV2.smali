.class final Lcom/dropbox/core/v2/DbxAppClientV2$DbxAppRawClientV2;
.super Lcom/dropbox/core/v2/DbxRawClientV2;
.source "DbxAppClientV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/DbxAppClientV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DbxAppRawClientV2"
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final secret:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/DbxHost;)V
    .locals 0
    .param p1, "requestConfig"    # Lcom/dropbox/core/DbxRequestConfig;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "secret"    # Ljava/lang/String;
    .param p4, "host"    # Lcom/dropbox/core/DbxHost;

    .prologue
    .line 57
    invoke-direct {p0, p1, p4}, Lcom/dropbox/core/v2/DbxRawClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;)V

    .line 58
    iput-object p2, p0, Lcom/dropbox/core/v2/DbxAppClientV2$DbxAppRawClientV2;->key:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/dropbox/core/v2/DbxAppClientV2$DbxAppRawClientV2;->secret:Ljava/lang/String;

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/DbxHost;Lcom/dropbox/core/v2/DbxAppClientV2$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dropbox/core/DbxRequestConfig;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lcom/dropbox/core/DbxHost;
    .param p5, "x4"    # Lcom/dropbox/core/v2/DbxAppClientV2$1;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dropbox/core/v2/DbxAppClientV2$DbxAppRawClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/DbxHost;)V

    return-void
.end method


# virtual methods
.method protected addAuthHeaders(Ljava/util/List;)V
    .locals 2
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
    .line 64
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxAppClientV2$DbxAppRawClientV2;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/dropbox/core/v2/DbxAppClientV2$DbxAppRawClientV2;->secret:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/dropbox/core/DbxRequestUtil;->addBasicAuthHeader(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 65
    return-void
.end method
