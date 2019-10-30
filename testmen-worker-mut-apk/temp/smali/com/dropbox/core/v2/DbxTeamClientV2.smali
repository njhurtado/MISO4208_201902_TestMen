.class public Lcom/dropbox/core/v2/DbxTeamClientV2;
.super Lcom/dropbox/core/v2/DbxTeamClientV2Base;
.source "DbxTeamClientV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/DbxTeamClientV2$DbxTeamRawClientV2;
    }
.end annotation


# instance fields
.field private final accessToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;)V
    .locals 1
    .param p1, "requestConfig"    # Lcom/dropbox/core/DbxRequestConfig;
    .param p2, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 37
    sget-object v0, Lcom/dropbox/core/DbxHost;->DEFAULT:Lcom/dropbox/core/DbxHost;

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/v2/DbxTeamClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Lcom/dropbox/core/DbxHost;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Lcom/dropbox/core/DbxHost;)V
    .locals 2
    .param p1, "requestConfig"    # Lcom/dropbox/core/DbxRequestConfig;
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "host"    # Lcom/dropbox/core/DbxHost;

    .prologue
    .line 53
    new-instance v0, Lcom/dropbox/core/v2/DbxTeamClientV2$DbxTeamRawClientV2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p3, p2, v1}, Lcom/dropbox/core/v2/DbxTeamClientV2$DbxTeamRawClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;Ljava/lang/String;Lcom/dropbox/core/v2/DbxTeamClientV2$1;)V

    invoke-direct {p0, v0}, Lcom/dropbox/core/v2/DbxTeamClientV2Base;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    .line 54
    iput-object p2, p0, Lcom/dropbox/core/v2/DbxTeamClientV2;->accessToken:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public asMember(Ljava/lang/String;)Lcom/dropbox/core/v2/DbxClientV2;
    .locals 6
    .param p1, "memberId"    # Ljava/lang/String;

    .prologue
    .line 72
    if-nez p1, :cond_0

    .line 73
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\'memberId\' should not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/DbxTeamClientV2$DbxTeamRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/DbxTeamClientV2;->_client:Lcom/dropbox/core/v2/DbxRawClientV2;

    .line 77
    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getRequestConfig()Lcom/dropbox/core/DbxRequestConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/DbxTeamClientV2;->_client:Lcom/dropbox/core/v2/DbxRawClientV2;

    .line 78
    invoke-virtual {v2}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v2

    iget-object v3, p0, Lcom/dropbox/core/v2/DbxTeamClientV2;->accessToken:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/DbxTeamClientV2$DbxTeamRawClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/DbxTeamClientV2$1;)V

    .line 82
    .local v0, "asMemberClient":Lcom/dropbox/core/v2/DbxRawClientV2;
    new-instance v1, Lcom/dropbox/core/v2/DbxClientV2;

    invoke-direct {v1, v0}, Lcom/dropbox/core/v2/DbxClientV2;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    return-object v1
.end method
