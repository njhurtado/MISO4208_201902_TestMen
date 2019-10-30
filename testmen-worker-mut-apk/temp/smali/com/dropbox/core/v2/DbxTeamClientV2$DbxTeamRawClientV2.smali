.class final Lcom/dropbox/core/v2/DbxTeamClientV2$DbxTeamRawClientV2;
.super Lcom/dropbox/core/v2/DbxRawClientV2;
.source "DbxTeamClientV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/DbxTeamClientV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DbxTeamRawClientV2"
.end annotation


# instance fields
.field private final accessToken:Ljava/lang/String;

.field private final memberId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;Ljava/lang/String;)V
    .locals 1
    .param p1, "requestConfig"    # Lcom/dropbox/core/DbxRequestConfig;
    .param p2, "host"    # Lcom/dropbox/core/DbxHost;
    .param p3, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/dropbox/core/v2/DbxTeamClientV2$DbxTeamRawClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;Ljava/lang/String;Lcom/dropbox/core/v2/DbxTeamClientV2$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dropbox/core/DbxRequestConfig;
    .param p2, "x1"    # Lcom/dropbox/core/DbxHost;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lcom/dropbox/core/v2/DbxTeamClientV2$1;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/core/v2/DbxTeamClientV2$DbxTeamRawClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "requestConfig"    # Lcom/dropbox/core/DbxRequestConfig;
    .param p2, "host"    # Lcom/dropbox/core/DbxHost;
    .param p3, "accessToken"    # Ljava/lang/String;
    .param p4, "memberId"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/dropbox/core/v2/DbxRawClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;)V

    .line 101
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "accessToken"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    iput-object p3, p0, Lcom/dropbox/core/v2/DbxTeamClientV2$DbxTeamRawClientV2;->accessToken:Ljava/lang/String;

    .line 104
    iput-object p4, p0, Lcom/dropbox/core/v2/DbxTeamClientV2$DbxTeamRawClientV2;->memberId:Ljava/lang/String;

    .line 105
    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/DbxTeamClientV2$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dropbox/core/DbxRequestConfig;
    .param p2, "x1"    # Lcom/dropbox/core/DbxHost;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Lcom/dropbox/core/v2/DbxTeamClientV2$1;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dropbox/core/v2/DbxTeamClientV2$DbxTeamRawClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;Ljava/lang/String;Ljava/lang/String;)V

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
    .line 109
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxTeamClientV2$DbxTeamRawClientV2;->accessToken:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/dropbox/core/DbxRequestUtil;->addAuthHeader(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    .line 110
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxTeamClientV2$DbxTeamRawClientV2;->memberId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxTeamClientV2$DbxTeamRawClientV2;->memberId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/dropbox/core/DbxRequestUtil;->addSelectUserHeader(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    .line 113
    :cond_0
    return-void
.end method
