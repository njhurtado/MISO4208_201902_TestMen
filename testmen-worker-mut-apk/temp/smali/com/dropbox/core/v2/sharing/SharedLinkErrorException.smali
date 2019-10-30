.class public Lcom/dropbox/core/v2/sharing/SharedLinkErrorException;
.super Lcom/dropbox/core/DbxApiException;
.source "SharedLinkErrorException.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public final errorValue:Lcom/dropbox/core/v2/sharing/SharedLinkError;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/SharedLinkError;)V
    .locals 2
    .param p1, "routeName"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;
    .param p3, "userMessage"    # Lcom/dropbox/core/LocalizedText;
    .param p4, "errorValue"    # Lcom/dropbox/core/v2/sharing/SharedLinkError;

    .prologue
    .line 29
    invoke-static {p1, p3, p4}, Lcom/dropbox/core/v2/sharing/SharedLinkErrorException;->buildMessage(Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Lcom/dropbox/core/DbxApiException;-><init>(Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Ljava/lang/String;)V

    .line 30
    if-nez p4, :cond_0

    .line 31
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "errorValue"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    iput-object p4, p0, Lcom/dropbox/core/v2/sharing/SharedLinkErrorException;->errorValue:Lcom/dropbox/core/v2/sharing/SharedLinkError;

    .line 34
    return-void
.end method
