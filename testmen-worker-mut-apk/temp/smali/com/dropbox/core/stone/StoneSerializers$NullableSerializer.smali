.class final Lcom/dropbox/core/stone/StoneSerializers$NullableSerializer;
.super Lcom/dropbox/core/stone/StoneSerializer;
.source "StoneSerializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/stone/StoneSerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NullableSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/dropbox/core/stone/StoneSerializer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final underlying:Lcom/dropbox/core/stone/StoneSerializer;
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
    .line 224
    .local p0, "this":Lcom/dropbox/core/stone/StoneSerializers$NullableSerializer;, "Lcom/dropbox/core/stone/StoneSerializers$NullableSerializer<TT;>;"
    .local p1, "underlying":Lcom/dropbox/core/stone/StoneSerializer;, "Lcom/dropbox/core/stone/StoneSerializer<TT;>;"
    invoke-direct {p0}, Lcom/dropbox/core/stone/StoneSerializer;-><init>()V

    .line 225
    iput-object p1, p0, Lcom/dropbox/core/stone/StoneSerializers$NullableSerializer;->underlying:Lcom/dropbox/core/stone/StoneSerializer;

    .line 226
    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "this":Lcom/dropbox/core/stone/StoneSerializers$NullableSerializer;, "Lcom/dropbox/core/stone/StoneSerializers$NullableSerializer<TT;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 240
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 241
    const/4 v0, 0x0

    .line 243
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/stone/StoneSerializers$NullableSerializer;->underlying:Lcom/dropbox/core/stone/StoneSerializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
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
    .line 230
    .local p0, "this":Lcom/dropbox/core/stone/StoneSerializers$NullableSerializer;, "Lcom/dropbox/core/stone/StoneSerializers$NullableSerializer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 231
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNull()V

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/stone/StoneSerializers$NullableSerializer;->underlying:Lcom/dropbox/core/stone/StoneSerializer;

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0
.end method
