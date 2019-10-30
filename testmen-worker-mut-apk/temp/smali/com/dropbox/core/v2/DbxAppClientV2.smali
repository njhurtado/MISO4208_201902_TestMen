.class Lcom/dropbox/core/v2/DbxAppClientV2;
.super Lcom/dropbox/core/v2/DbxAppClientV2Base;
.source "DbxAppClientV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/DbxAppClientV2$DbxAppRawClientV2;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "requestConfig"    # Lcom/dropbox/core/DbxRequestConfig;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "secret"    # Ljava/lang/String;

    .prologue
    .line 31
    sget-object v0, Lcom/dropbox/core/DbxHost;->DEFAULT:Lcom/dropbox/core/DbxHost;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/dropbox/core/v2/DbxAppClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/DbxHost;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/DbxHost;)V
    .locals 6
    .param p1, "requestConfig"    # Lcom/dropbox/core/DbxRequestConfig;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "secret"    # Ljava/lang/String;
    .param p4, "host"    # Lcom/dropbox/core/DbxHost;

    .prologue
    .line 46
    new-instance v0, Lcom/dropbox/core/v2/DbxAppClientV2$DbxAppRawClientV2;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/DbxAppClientV2$DbxAppRawClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/DbxHost;Lcom/dropbox/core/v2/DbxAppClientV2$1;)V

    invoke-direct {p0, v0}, Lcom/dropbox/core/v2/DbxAppClientV2Base;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    .line 47
    return-void
.end method
