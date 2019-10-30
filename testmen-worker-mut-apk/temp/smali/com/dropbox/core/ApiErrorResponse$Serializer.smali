.class final Lcom/dropbox/core/ApiErrorResponse$Serializer;
.super Lcom/dropbox/core/stone/StoneSerializer;
.source "ApiErrorResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/ApiErrorResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/dropbox/core/stone/StoneSerializer",
        "<",
        "Lcom/dropbox/core/ApiErrorResponse",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private errSerializer:Lcom/dropbox/core/stone/StoneSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dropbox/core/stone/StoneSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/dropbox/core/ApiErrorResponse$Serializer;, "Lcom/dropbox/core/ApiErrorResponse$Serializer<TT;>;"
    .local p1, "errSerializer":Lcom/dropbox/core/stone/StoneSerializer;, "Lcom/dropbox/core/stone/StoneSerializer<TT;>;"
    invoke-direct {p0}, Lcom/dropbox/core/stone/StoneSerializer;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/dropbox/core/ApiErrorResponse$Serializer;->errSerializer:Lcom/dropbox/core/stone/StoneSerializer;

    .line 41
    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/ApiErrorResponse;
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Lcom/dropbox/core/ApiErrorResponse",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/dropbox/core/ApiErrorResponse$Serializer;, "Lcom/dropbox/core/ApiErrorResponse$Serializer<TT;>;"
    const/4 v0, 0x0

    .line 51
    .local v0, "error":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    .line 53
    .local v2, "userMessage":Lcom/dropbox/core/LocalizedText;
    invoke-static {p1}, Lcom/dropbox/core/ApiErrorResponse$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 54
    .end local v0    # "error":Ljava/lang/Object;, "TT;"
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_2

    .line 55
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 57
    const-string v4, "error"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 58
    iget-object v4, p0, Lcom/dropbox/core/ApiErrorResponse$Serializer;->errSerializer:Lcom/dropbox/core/stone/StoneSerializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .restart local v0    # "error":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 59
    .end local v0    # "error":Ljava/lang/Object;, "TT;"
    :cond_0
    const-string v4, "user_message"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 60
    sget-object v4, Lcom/dropbox/core/LocalizedText;->STONE_SERIALIZER:Lcom/dropbox/core/stone/StoneSerializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "userMessage":Lcom/dropbox/core/LocalizedText;
    check-cast v2, Lcom/dropbox/core/LocalizedText;

    .restart local v2    # "userMessage":Lcom/dropbox/core/LocalizedText;
    goto :goto_0

    .line 62
    :cond_1
    invoke-static {p1}, Lcom/dropbox/core/ApiErrorResponse$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 65
    .end local v1    # "field":Ljava/lang/String;
    :cond_2
    if-nez v0, :cond_3

    .line 66
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field \"error\" missing."

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 69
    :cond_3
    new-instance v3, Lcom/dropbox/core/ApiErrorResponse;

    invoke-direct {v3, v0, v2}, Lcom/dropbox/core/ApiErrorResponse;-><init>(Ljava/lang/Object;Lcom/dropbox/core/LocalizedText;)V

    .line 70
    .local v3, "value":Lcom/dropbox/core/ApiErrorResponse;, "Lcom/dropbox/core/ApiErrorResponse<TT;>;"
    invoke-static {p1}, Lcom/dropbox/core/ApiErrorResponse$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 72
    return-object v3
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/dropbox/core/ApiErrorResponse$Serializer;, "Lcom/dropbox/core/ApiErrorResponse$Serializer<TT;>;"
    invoke-virtual {p0, p1}, Lcom/dropbox/core/ApiErrorResponse$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/ApiErrorResponse;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/ApiErrorResponse;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/ApiErrorResponse",
            "<TT;>;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/dropbox/core/ApiErrorResponse$Serializer;, "Lcom/dropbox/core/ApiErrorResponse$Serializer<TT;>;"
    .local p1, "value":Lcom/dropbox/core/ApiErrorResponse;, "Lcom/dropbox/core/ApiErrorResponse<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Error wrapper serialization not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/dropbox/core/ApiErrorResponse$Serializer;, "Lcom/dropbox/core/ApiErrorResponse$Serializer<TT;>;"
    check-cast p1, Lcom/dropbox/core/ApiErrorResponse;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/ApiErrorResponse$Serializer;->serialize(Lcom/dropbox/core/ApiErrorResponse;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
