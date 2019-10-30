.class final Lcom/dropbox/core/LocalizedText$1;
.super Lcom/dropbox/core/stone/StoneSerializer;
.source "LocalizedText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/LocalizedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StoneSerializer",
        "<",
        "Lcom/dropbox/core/LocalizedText;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/dropbox/core/stone/StoneSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/LocalizedText;
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 74
    const/4 v2, 0x0

    .line 75
    .local v2, "text":Ljava/lang/String;
    const/4 v1, 0x0

    .line 77
    .local v1, "locale":Ljava/lang/String;
    invoke-static {p1}, Lcom/dropbox/core/LocalizedText$1;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 78
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_2

    .line 79
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 81
    const-string v4, "text"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 82
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "text":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2    # "text":Ljava/lang/String;
    goto :goto_0

    .line 83
    :cond_0
    const-string v4, "locale"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 84
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "locale":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "locale":Ljava/lang/String;
    goto :goto_0

    .line 86
    :cond_1
    invoke-static {p1}, Lcom/dropbox/core/LocalizedText$1;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 90
    .end local v0    # "field":Ljava/lang/String;
    :cond_2
    if-nez v2, :cond_3

    .line 91
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field \"text\" missing."

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 94
    :cond_3
    if-nez v1, :cond_4

    .line 95
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field \"locale\" missing."

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 98
    :cond_4
    new-instance v3, Lcom/dropbox/core/LocalizedText;

    invoke-direct {v3, v2, v1}, Lcom/dropbox/core/LocalizedText;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .local v3, "value":Lcom/dropbox/core/LocalizedText;
    invoke-static {p1}, Lcom/dropbox/core/LocalizedText$1;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 101
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
    .line 66
    invoke-virtual {p0, p1}, Lcom/dropbox/core/LocalizedText$1;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/LocalizedText;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/LocalizedText;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/LocalizedText;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 69
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
    .line 66
    check-cast p1, Lcom/dropbox/core/LocalizedText;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/LocalizedText$1;->serialize(Lcom/dropbox/core/LocalizedText;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
