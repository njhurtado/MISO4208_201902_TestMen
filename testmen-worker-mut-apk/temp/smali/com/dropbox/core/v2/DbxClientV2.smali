.class public Lcom/dropbox/core/v2/DbxClientV2;
.super Lcom/dropbox/core/v2/DbxClientV2Base;
.source "DbxClientV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/DbxClientV2$DbxUserRawClientV2;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;)V
    .locals 1
    .param p1, "requestConfig"    # Lcom/dropbox/core/DbxRequestConfig;
    .param p2, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 31
    sget-object v0, Lcom/dropbox/core/DbxHost;->DEFAULT:Lcom/dropbox/core/DbxHost;

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/v2/DbxClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Lcom/dropbox/core/DbxHost;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Lcom/dropbox/core/DbxHost;)V
    .locals 1
    .param p1, "requestConfig"    # Lcom/dropbox/core/DbxRequestConfig;
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "host"    # Lcom/dropbox/core/DbxHost;

    .prologue
    .line 47
    new-instance v0, Lcom/dropbox/core/v2/DbxClientV2$DbxUserRawClientV2;

    invoke-direct {v0, p1, p2, p3}, Lcom/dropbox/core/v2/DbxClientV2$DbxUserRawClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Lcom/dropbox/core/DbxHost;)V

    invoke-direct {p0, v0}, Lcom/dropbox/core/v2/DbxClientV2Base;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    .line 48
    return-void
.end method

.method constructor <init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V
    .locals 0
    .param p1, "client"    # Lcom/dropbox/core/v2/DbxRawClientV2;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/DbxClientV2Base;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    .line 59
    return-void
.end method
