.class public final Lcom/dropbox/core/DbxWrappedException;
.super Ljava/lang/Exception;
.source "DbxWrappedException.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final errValue:Ljava/lang/Object;

.field private final requestId:Ljava/lang/String;

.field private final userMessage:Lcom/dropbox/core/LocalizedText;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;)V
    .locals 0
    .param p1, "errValue"    # Ljava/lang/Object;
    .param p2, "requestId"    # Ljava/lang/String;
    .param p3, "userMessage"    # Lcom/dropbox/core/LocalizedText;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/dropbox/core/DbxWrappedException;->errValue:Ljava/lang/Object;

    .line 22
    iput-object p2, p0, Lcom/dropbox/core/DbxWrappedException;->requestId:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/dropbox/core/DbxWrappedException;->userMessage:Lcom/dropbox/core/LocalizedText;

    .line 24
    return-void
.end method

.method public static fromResponse(Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/DbxWrappedException;
    .locals 5
    .param p1, "response"    # Lcom/dropbox/core/http/HttpRequestor$Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<TT;>;",
            "Lcom/dropbox/core/http/HttpRequestor$Response;",
            ")",
            "Lcom/dropbox/core/DbxWrappedException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "errSerializer":Lcom/dropbox/core/stone/StoneSerializer;, "Lcom/dropbox/core/stone/StoneSerializer<TT;>;"
    invoke-static {p1}, Lcom/dropbox/core/DbxRequestUtil;->getRequestId(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "requestId":Ljava/lang/String;
    new-instance v2, Lcom/dropbox/core/ApiErrorResponse$Serializer;

    invoke-direct {v2, p0}, Lcom/dropbox/core/ApiErrorResponse$Serializer;-><init>(Lcom/dropbox/core/stone/StoneSerializer;)V

    .line 43
    invoke-virtual {p1}, Lcom/dropbox/core/http/HttpRequestor$Response;->getBody()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/dropbox/core/ApiErrorResponse$Serializer;->deserialize(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/ApiErrorResponse;

    .line 45
    .local v0, "apiResponse":Lcom/dropbox/core/ApiErrorResponse;, "Lcom/dropbox/core/ApiErrorResponse<TT;>;"
    new-instance v2, Lcom/dropbox/core/DbxWrappedException;

    invoke-virtual {v0}, Lcom/dropbox/core/ApiErrorResponse;->getError()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/ApiErrorResponse;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-direct {v2, v3, v1, v4}, Lcom/dropbox/core/DbxWrappedException;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;)V

    return-object v2
.end method


# virtual methods
.method public getErrorValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dropbox/core/DbxWrappedException;->errValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/core/DbxWrappedException;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserMessage()Lcom/dropbox/core/LocalizedText;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dropbox/core/DbxWrappedException;->userMessage:Lcom/dropbox/core/LocalizedText;

    return-object v0
.end method
