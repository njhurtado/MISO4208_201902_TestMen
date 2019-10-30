.class public Lcom/dropbox/core/v2/auth/DbxAppAuthRequests;
.super Ljava/lang/Object;
.source "DbxAppAuthRequests.java"


# instance fields
.field private final client:Lcom/dropbox/core/v2/DbxRawClientV2;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V
    .locals 0
    .param p1, "client"    # Lcom/dropbox/core/v2/DbxRawClientV2;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/dropbox/core/v2/auth/DbxAppAuthRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    .line 24
    return-void
.end method


# virtual methods
.method tokenFromOauth1(Lcom/dropbox/core/v2/auth/TokenFromOAuth1Arg;)Lcom/dropbox/core/v2/auth/TokenFromOAuth1Result;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/auth/TokenFromOAuth1Arg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/auth/TokenFromOAuth1ErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/auth/DbxAppAuthRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/auth/DbxAppAuthRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/auth/token/from_oauth1"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Arg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/auth/TokenFromOAuth1Arg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Result$Serializer;->INSTANCE:Lcom/dropbox/core/v2/auth/TokenFromOAuth1Result$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error$Serializer;->INSTANCE:Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Result;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 45
    :catch_0
    move-exception v8

    .line 46
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/auth/TokenFromOAuth1ErrorException;

    const-string v2, "2/auth/token/from_oauth1"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/auth/TokenFromOAuth1ErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error;)V

    throw v1
.end method

.method public tokenFromOauth1(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/auth/TokenFromOAuth1Result;
    .locals 2
    .param p1, "oauth1Token"    # Ljava/lang/String;
    .param p2, "oauth1TokenSecret"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/auth/TokenFromOAuth1ErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Arg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Arg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .local v0, "_arg":Lcom/dropbox/core/v2/auth/TokenFromOAuth1Arg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/auth/DbxAppAuthRequests;->tokenFromOauth1(Lcom/dropbox/core/v2/auth/TokenFromOAuth1Arg;)Lcom/dropbox/core/v2/auth/TokenFromOAuth1Result;

    move-result-object v1

    return-object v1
.end method
